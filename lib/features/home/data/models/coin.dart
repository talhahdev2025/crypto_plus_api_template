import 'dart:convert';

class Coin {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final int currentPrice;
  Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  Coin copyWith({
    String? id,
    String? symbol,
    String? name,
    String? image,
    int? current_price,
  }) {
    return Coin(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      image: image ?? this.image,
      currentPrice: current_price ?? this.currentPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'symbol': symbol,
      'name': name,
      'image': image,
      'current_price': currentPrice,
    };
  }

  factory Coin.fromMap(Map<String, dynamic> map) {
    return Coin(
      id: map['id'] as String,
      symbol: map['symbol'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      currentPrice: map['current_price'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coin.fromJson(String source) =>
      Coin.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Coin(id: $id, symbol: $symbol, name: $name, image: $image, current_price: $currentPrice)';
  }

  @override
  bool operator ==(covariant Coin other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.symbol == symbol &&
        other.name == name &&
        other.image == image &&
        other.currentPrice == currentPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        symbol.hashCode ^
        name.hashCode ^
        image.hashCode ^
        currentPrice.hashCode;
  }
}
