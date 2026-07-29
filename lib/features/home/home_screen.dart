import 'package:crypto_plus/core/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SafeArea(
          child: Container(
            // padding: AppInsets.screen,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: CustomScrollView(
              slivers: [
                //app bar
                SliverToBoxAdapter(
                  child: Padding(
                    padding: AppInsets.screen,
                    child: CustomAppBar(title: 'Home'),
                  ),
                ),
                //dashborad money
                SliverToBoxAdapter(
                  child: Padding(
                    padding: AppInsets.screen,
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .center,
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text('Portfolio', style: AppTextStyles.bodyMedium),
                            Text(
                              '\$ 35,734.00',
                              style: AppTextStyles.headlineLarge,
                            ),
                          ],
                        ),
                        //number container
                        Container(
                          padding: AppInsets.button,
                          decoration: BoxDecoration(
                            borderRadius: AppRadius.medium,
                            border: Border.all(color: AppColors.success),
                          ),
                          child: Text(
                            '+12 43 (32 26)',
                            style: AppTextStyles.bodyLarge.copyWith(
                              color: AppColors.success,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //horizontal list view
                SliverToBoxAdapter(
                  child: Container(
                    height: 150,
                    width: constraints.maxWidth,
                    child: ListView(
                      scrollDirection: .horizontal,
                      children: [
                        //first container
                        Container(
                          margin: AppInsets.md,
                          padding: AppInsets.card,
                          width: constraints.maxWidth * 0.6,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: AppRadius.large,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.cyclone_sharp,
                                    size: AppSizes.iconXLarge,
                                    color: AppColors.grey,
                                  ),
                                  AppSpacing.hMd,
                                  Text(
                                    'BINANCE',
                                    style: AppTextStyles.bodyLarge.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                'DEPOSIT USDC',
                                style: AppTextStyles.bodyLarge.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              AppSpacing.vMd,
                              Text(
                                'Via Balance',
                                style: AppTextStyles.bodyLarge.copyWith(
                                  color: AppColors.textHint,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //second contaienr
                        Container(
                          margin: AppInsets.md,
                          padding: AppInsets.card,
                          width: constraints.maxWidth * 0.6,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: AppRadius.large,
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.cyclone_sharp,
                                    size: AppSizes.iconXLarge,
                                    color: AppColors.grey,
                                  ),
                                  AppSpacing.hMd,
                                  Text(
                                    'BINANCE',
                                    style: AppTextStyles.bodyLarge.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                'DEPOSIT USDC',
                                style: AppTextStyles.bodyLarge.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              AppSpacing.vMd,
                              Text(
                                'Via Balance',
                                style: AppTextStyles.bodyLarge.copyWith(
                                  color: AppColors.textHint,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //section header of stocks
                SliverToBoxAdapter(
                  child: Padding(
                    padding: AppInsets.screen,
                    child: SectionHeader(
                      headline: 'Top Stocks',
                      actionText: 'See all',
                    ),
                  ),
                ),
                //listView of topStock
                SliverList.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: AppInsets.listItem,
                      margin: AppInsets.listItem,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: AppRadius.large,
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          CircleAvatar(foregroundColor: AppColors.primary),
                          AppSpacing.hLg,
                          Text('Google', style: AppTextStyles.bodyLarge),
                          Spacer(),
                          Column(
                            crossAxisAlignment: .end,
                            children: [
                              Text('\$904.00', style: AppTextStyles.titleLarge),
                              Text(
                                '-%1.80',
                                style: AppTextStyles.titleMedium.copyWith(
                                  color: AppColors.error,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
