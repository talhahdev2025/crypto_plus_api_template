import 'package:crypto_plus/features/home/data/models/coin.dart';
import 'package:crypto_plus/features/home/data/services/home_service.dart';

class HomeRepository {
  final HomeService _service = HomeService();
  Future<List<Coin>> getCoins() {
    return _service.getCoins();
  }
}
