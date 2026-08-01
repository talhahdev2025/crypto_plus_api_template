import 'package:crypto_plus/core/exports.dart';
import 'package:crypto_plus/core/widgets/coins_list.dart';
import 'package:crypto_plus/features/home/data/models/coin.dart';
import 'package:crypto_plus/features/home/data/repository/home_repository.dart';

class WatchlistScreen extends StatelessWidget {
  WatchlistScreen({super.key});

  final Future<List<Coin>> coins = HomeRepository().getCoins();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            //appBar
            SliverToBoxAdapter(
              child: Padding(
                padding: AppInsets.screen,
                child: CustomAppBar(title: 'Watchlist'),
              ),
            ),
            //search field
            SliverToBoxAdapter(
              child: Padding(
                padding: AppInsets.screen,
                child: CustomTextField(
                  prefixIcon: Icons.search_outlined,
                  hint: 'Search Coins',
                  keyBoardType: .text,
                ),
              ),
            ),
            CoinsList(coins: coins),
          ],
        ),
      ),
    );
  }
}
