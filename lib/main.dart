import 'package:algo_track/common/constants.dart';
import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/screens/dashboard_screen.dart';
import 'package:algo_track/screens/nfc_test_screen.dart';
import 'package:algo_track/screens/welcome_screen.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

//ctrl+alt+d  => devtoold in browser

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([EmailAuthProvider(), PhoneAuthProvider()]);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UiState>(create: (_) => UiState()),
  ], child: AlgoTrackApp()));
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
              textTheme: GoogleFonts.openSansTextTheme(
                  ThemeData(brightness: uiState.themeMode).textTheme)),
          debugShowCheckedModeBanner: false,
          routerConfig: _router);
    });
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: WELCOME_SCREEN,
        builder: (BuildContext context, GoRouterState state) => WelcomeScreen(),
        routes: <GoRoute>[
          GoRoute(
              path: NFC_TEST_SCREEN,
              builder: (BuildContext context, GoRouterState state) =>
                  const NfcTestScreen()),
          GoRoute(
              path: DASHBOARD_SCREEN,
              builder: (BuildContext context, GoRouterState state) =>
                  const DashBoardScreen()),
        ],
      ),
    ],
  );
}
