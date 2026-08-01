import 'package:crypto_plus/core/exports.dart';
import 'package:crypto_plus/features/home/data/models/coin.dart';

class CoinsList extends StatelessWidget {
  const CoinsList({super.key, required this.coins});
  final Future<List<Coin>> coins;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: coins,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text('${snapshot.error}'));
        }
        final data = snapshot.data!;

        return SliverList.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              // height: 120,
              padding: AppInsets.listItem,
              margin: AppInsets.listItem,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: AppRadius.large,
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(data[index].image),
                  ),
                  AppSpacing.hLg,
                  Text(data[index].name, style: AppTextStyles.bodyLarge),
                  Spacer(),
                  Column(
                    crossAxisAlignment: .end,
                    children: [
                      Text(
                        '\$${data[index].currentPrice}',
                        style: AppTextStyles.titleLarge,
                      ),
                      Text(
                        '${data[index].priceChangePercentage24h} %',
                        style: AppTextStyles.titleMedium.copyWith(
                          color: (data[index].priceChangePercentage24h > 0)
                              ? AppColors.success
                              : AppColors.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
