import 'package:crypto_plus/core/exports.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.headline});
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headline,
          style: AppTextStyles.headlineMedium.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
