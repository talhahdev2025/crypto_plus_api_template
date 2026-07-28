import 'package:crypto_plus/core/exports.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: AppInsets.screen,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomAppBar(title: 'Create Account'),
                  AppSpacing.vXl,
                  Text(
                    'We provide a full range of forex and crypto trading services for you.',
                    textAlign: .start,
                    style: AppTextStyles.titleLarge,
                  ),
                  AppSpacing.vHuge,
                  SectionHeader(headline: 'Your email'),
                  AppSpacing.vLg,
                  CustomTextField(
                    hint: 'youremail@gmail.com',
                    autoFocus: true,
                    controller: emailController,
                    focusNode: emailFocusNode,
                    nextFocusNode: passwordFocusNode,
                    textInputAction: .next,
                  ),
                  AppSpacing.vLg,
                  SectionHeader(headline: 'Password'),
                  AppSpacing.vLg,
                  CustomTextField(
                    hint: '************',
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    textInputAction: .done,
                  ),
                  //button
                  AppSpacing.vHuge,
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: 'CREATE ACCOUNT',
                      textStyle: AppTextStyles.bodyLarge.copyWith(
                        color: AppColors.white,
                        fontWeight: .bold,
                      ),
                      // TODO: navigate to home screen
                      onPress: () {},
                    ),
                  ),
                  AppSpacing.vXxxl,
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text('You have an account?'),
                      Text(
                        'Sign in ',
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
