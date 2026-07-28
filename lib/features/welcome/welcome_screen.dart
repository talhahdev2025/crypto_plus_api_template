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
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Container(
          alignment: .center,
          margin: AppInsets.dialog,
          padding: AppInsets.dialog,
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              Text(
                'FOREX & \nCRYPTO \nTRADING',
                textAlign: .center,
                style: AppTextStyles.displayLarge.copyWith(
                  fontSize: 48,
                  height: 0,
                  color: AppColors.white,
                ),
              ),

              AppSpacing.vXxl,
              Text(
                'Start trading new with \n Forex & Crypto Trading:',
                textAlign: .center,
                style: AppTextStyles.displayMedium.copyWith(
                  color: AppColors.white,
                  fontWeight: .normal,
                ),
              ),
              AppSpacing.vXxl,
              Container(
                width: double.infinity,
                child: CustomButton(
                  text: 'Register Now',
                  textStyle: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: .w500,
                  ),
                  backgroundColor: AppColors.white,

                  // TODO: add route to create account here
                  onPress: () => context.pushNamed(AppRoutes.createAccount),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
