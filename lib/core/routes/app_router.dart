import 'package:crypto_plus/core/exports.dart';
import 'package:crypto_plus/features/home/home_screen.dart';

class AppRouter {
  static final GoRouter routers = GoRouter(
    routes: [
      //splash screenn
      GoRoute(
        path: AppRoutes.splashPath,
        name: AppRoutes.splash,
        builder: (context, state) => SplashScreen(),
      ),
      //welcome
      GoRoute(
        path: AppRoutes.welcomePath,
        name: AppRoutes.welcome,
        builder: (context, state) => WelcomeScreen(),
      ),
      //create account
      GoRoute(
        path: AppRoutes.createAccountPath,
        name: AppRoutes.createAccount,
        builder: (context, state) => CreateAccountScreen(),
      ),
      //home
      GoRoute(
        path: AppRoutes.homePath,
        name: AppRoutes.home,
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
