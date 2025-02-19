import 'package:algo_track/common/constants.dart';
import 'package:algo_track/common/ui_constants.dart';
import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/screens/authentication/auth_profile_screen.dart';
import 'package:algo_track/screens/authentication/email_signin_screen.dart';
import 'package:algo_track/screens/authentication/forgot_password_screen.dart';
import 'package:algo_track/screens/authentication/phone_input_screen.dart';
import 'package:algo_track/screens/authentication/sign_in_screen.dart';
import 'package:algo_track/screens/authentication/sms_code_input_screen.dart';
import 'package:algo_track/screens/authentication/verify_email_screen.dart';
import 'package:algo_track/screens/create_company/create_company_screen.dart';
import 'package:algo_track/screens/dashboard_screen.dart';
import 'package:algo_track/screens/nfc_test_screen.dart';
import 'package:algo_track/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

//ctrl+alt+d  => devtools in browser
//flutter build apk --split-per-abi --no-shrink
//flutter pub run build_runner watch --delete-conflicting-outputs

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initialise();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UiState>(create: (_) => UiState()),
  ], child: AlgoTrackApp()));
}

void initialise() {
  if (!kIsWeb) {
    // If you wish to record a "non-fatal" exception, please use `FirebaseCrashlytics.instance.recordFlutterError` instead
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      // If you wish to record a "non-fatal" exception, please remove the "fatal" parameter
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    EmailLinkAuthProvider(actionCodeSettings: actionCodeSettings),
    PhoneAuthProvider(),
  ]);
}

class AlgoTrackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UiState>(
        builder: (BuildContext context, UiState uiState, _) {
      return MaterialApp.router(
          title: 'Algo Track',
          theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: uiState.baseColor,
              brightness: uiState.themeMode,
              inputDecorationTheme:
                  kTextFieldDecorationTheme(Theme.of(context)),
              textTheme: GoogleFonts.openSansTextTheme(
                  ThemeData(brightness: uiState.themeMode).textTheme)),
          debugShowCheckedModeBanner: false,
          routerConfig: _router);
    });
  }

  final GoRouter _router = GoRouter(
    initialLocation: isLoggedIn ? '/dash' : '/',
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
          name: WELCOME_SCREEN,
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              WelcomeScreen(),
          routes: [
            GoRoute(
                name: CREATE_COMPANY_SCREEN,
                path: 'createCompany',
                builder: (BuildContext context, GoRouterState state) =>
                    const CreateCompanyScreen()),
            GoRoute(
                name: SIGN_IN_SCREEN,
                path: 'signIn',
                builder: (BuildContext context, GoRouterState state) =>
                    const SignInWidget(),
                routes: [
                  GoRoute(
                      name: VERIFY_EMAIL_SCREEN,
                      path: 'verifyEmail',
                      builder: (BuildContext context, GoRouterState state) =>
                          const VerifyEmailScreen()),
                  GoRoute(
                      name: PHONE_SCREEN,
                      path: 'phone',
                      builder: (BuildContext context, GoRouterState state) =>
                          const PhoneInputWidget(),
                      routes: [
                        GoRoute(
                            name: SMS_SCREEN,
                            path: 'sms',
                            builder:
                                (BuildContext context, GoRouterState state) {
                              state.extra;
                              return SmsInputScreen(
                                  arguments:
                                      state.extra as Map<String, dynamic>?);
                            }),
                      ]),
                  GoRoute(
                      name: FORGOT_PASSWORD_SCREEN,
                      path: 'forgotPassword',
                      builder: (BuildContext context, GoRouterState state) {
                        state.extra;
                        return ForgotPasswordWidget(
                            arguments: state.extra as Map<String, dynamic>?);
                      }),
                  GoRoute(
                      name: EMAIL_SIGN_IN_SCREEN,
                      path: 'emailSignIn',
                      builder: (BuildContext context, GoRouterState state) =>
                          EmailSignInWidget()),
                ]),
          ]),
      GoRoute(
        name: DASHBOARD_SCREEN,
        path: '/dash',
        builder: (BuildContext context, GoRouterState state) =>
            const DashBoardScreen(),
        routes: <GoRoute>[
          GoRoute(
              name: NFC_TEST_SCREEN,
              path: 'nfc',
              builder: (BuildContext context, GoRouterState state) =>
                  const NfcTestScreen()),
          GoRoute(
              name: AUTH_PROFILE_SCREEN,
              path: 'authProfile',
              builder: (BuildContext context, GoRouterState state) =>
                  AuthProfileScreen()),
        ],
      ),
    ],
  );
}

bool get isLoggedIn {
  final auth = fba.FirebaseAuth.instance;
  if (auth.currentUser == null ||
      (!auth.currentUser!.emailVerified && auth.currentUser!.email != null)) {
    return false;
  }
  return true;
}
