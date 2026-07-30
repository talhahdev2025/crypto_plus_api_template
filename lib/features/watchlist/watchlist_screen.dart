import 'package:crypto_plus/core/exports.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppInsets.screen,
          child: Column(
            children: [
              Card(
                color: AppColors.surface,
                elevation: 2,
                child: Text('This is Watchlist Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
