import 'package:crypto_plus/core/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPress,
    this.backgroundColor = AppColors.primary,
    this.textStyle = AppTextStyles.bodyLarge,
  });
  final String text;
  final VoidCallback onPress;
  final Color backgroundColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPress,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        alignment: .center,
        padding: AppInsets.button,
        shape: RoundedRectangleBorder(borderRadius: AppRadius.large),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
