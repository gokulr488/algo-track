import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [
        ForgotPasswordAction((context, email) {
          context.go(FORGOT_PASSWORD_SCREEN, extra: {'email': email});
        }),
        VerifyPhoneAction((context, _) {
          context.go(PHONE_SCREEN);
        }),
        AuthStateChangeAction<SignedIn>((context, state) {
          if (!state.user!.emailVerified) {
            context.go(VERIFY_EMAIL_SCREEN);
          } else {
            context.go(DASHBOARD_SCREEN);
          }
        }),
        AuthStateChangeAction<UserCreated>((context, state) {
          if (!state.credential.user!.emailVerified) {
            context.go(VERIFY_EMAIL_SCREEN);
          } else {
            context.go(DASHBOARD_SCREEN);
          }
        }),
        AuthStateChangeAction<MFARequired>((context, state) async {
          await startMFAVerification(
              resolver: state.resolver, context: context);
          // ignore: use_build_context_synchronously
          context.go(DASHBOARD_SCREEN);
        }),
        EmailLinkSignInAction((context) {
          context.go(EMAIL_SIGN_IN_SCREEN);
        }),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      // headerBuilder: headerImage('assets/images/flutterfire_logo.png'),
      // sideBuilder: sideImage('assets/images/flutterfire_logo.png'),
      subtitleBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            action == AuthAction.signIn
                ? 'Welcome to Algo Track! Please sign in to continue.'
                : 'Welcome to Algo Track! Please create an account to continue',
          ),
        );
      },
      footerBuilder: (context, action) {
        return Text(
          action == AuthAction.signIn
              ? 'By signing in, you agree to our terms and conditions.'
              : 'By registering, you agree to our terms and conditions.',
          style: const TextStyle(color: Colors.grey),
        );
      },
    );
  }
}
