import 'package:crypto_plus/core/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      AppDurations.splash,
      () => setState(() {
        context.go(AppRoutes.welcome);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'CryptoPlus',
          style: AppTextStyles.displayLarge.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
