class ApiConstants {
  ApiConstants._();

  /// Base URL
  static const String baseUrl = 'https://api.coingecko.com/api/v3';

  /// Endpoints
  static const String markets = '/coins/markets';
  static const String coinDetails = '/coins';      // /coins/{id}
  static const String trending = '/search/trending';
  static const String search = '/search';

  /// Default Query Parameters
  static const String currency = 'usd';
  static const String order = 'market_cap_desc';
  static const int perPage = 30;
  static const int page = 1;
  static const bool sparkline = false;
}