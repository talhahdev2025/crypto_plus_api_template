import 'package:crypto_plus/core/exports.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        elevation: 5,
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.primary,
        indicatorColor: AppColors.primary,
        selectedIndex: navigationShell.currentIndex,
        labelBehavior: .onlyShowSelected,
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border_outlined),
            selectedIcon: Icon(Icons.favorite_rounded),
            label: 'Watchlist',
          ),
        ],
      ),
    );
  }
}
