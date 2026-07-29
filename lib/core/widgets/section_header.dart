import 'package:crypto_plus/core/exports.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.headline,
    this.actionText = '',
  });
  final String headline;
  final String actionText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          headline,
          style: AppTextStyles.headlineMedium.copyWith(fontSize: 18),
        ),
        Text(actionText),
      ],
    );
  }
}
