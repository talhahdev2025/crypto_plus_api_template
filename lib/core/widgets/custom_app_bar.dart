import 'package:crypto_plus/core/exports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.headlineMedium),
      centerTitle: true,
      leading: Icon(Icons.menu),
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.transparent,
      leadingWidth: 0,
    );
  }
}
