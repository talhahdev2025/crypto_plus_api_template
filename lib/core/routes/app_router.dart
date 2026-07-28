import 'package:crypto_plus/core/exports.dart';

class AppRouter {
  static final GoRouter routers = GoRouter(
    routes: [
      //splash screenn
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => SplashScreen(),
      ),
      //welcome
       GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => WelcomeScreen(),
      ),
    ],
  );
}
