import 'package:crypto_plus/core/api/api_constants.dart';
import 'package:crypto_plus/core/api/api_template.dart';
import 'package:crypto_plus/features/home/data/models/coin.dart';

class HomeService extends ApiTemplate {
  Future<List<Coin>> getCoins() {
    final uri = Uri.parse(
      '${ApiConstants.baseUrl}${ApiConstants.markets}?vs_currency=usd&order=market_cap_desc&per_page=30&page=1',
    );

    return execute(
      uri: uri,
      parser: (json) {
        return (json as List).map((e) => Coin.fromMap(e)).toList();
      },
    );
  }
}
