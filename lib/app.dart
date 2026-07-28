import 'core/exports.dart';

class CryptoPlus extends StatefulWidget {
  const CryptoPlus({super.key});

  @override
  State<CryptoPlus> createState() => _CryptoPlusState();
}

class _CryptoPlusState extends State<CryptoPlus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
