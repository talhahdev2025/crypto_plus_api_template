import 'package:crypto_plus/core/exports.dart';

class AppRouter {
  static final GoRouter routers = GoRouter(
    initialLocation: AppRoutes.splashPath,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainNavigationScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoutes.home,
                path: AppRoutes.homePath,
                builder: (context, state) => HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoutes.watchlist,
                path: AppRoutes.watchlistPath,
                builder: (context, state) => WatchlistScreen(),
              ),
            ],
          ),
        ],
      ),

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
      // GoRoute(
      //   path: AppRoutes.homePath,
      //   name: AppRoutes.home,
      //   builder: (context, state) => HomeScreen(),
      // ),
    ],
  );
}
