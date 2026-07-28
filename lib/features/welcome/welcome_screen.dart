import 'package:crypto_plus/core/exports.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Forex & ',
              style: AppTextStyles.displayLarge.copyWith(
                color: AppColors.white,
              ),
            ),
            Text('Crypto', style: AppTextStyles.displayLarge),
            Text('Trading', style: AppTextStyles.displayLarge),
            AppSpacing.vMd,
            Text(
              'Start trading new with \n Forex & Crypto Trading:',
              style: AppTextStyles.displayLarge,
            ),
            AppSpacing.vMd,
            CustomButton(
              text: 'Register Now',
              onPress: () => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Button Pressed'))),
            ),
          ],
        ),
      ),
    );
  }
}
