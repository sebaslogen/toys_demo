import 'package:flutter/widgets.dart';

class Toy {
  final String name;
  final String description;
  final String imageUrl;
  final int hexColorBackground; // Like 0xFFFFFFFF
  final double price;
  final int popularityRank;

  Toy(
      {@required this.name,
      @required this.description,
      @required this.imageUrl,
      @required this.hexColorBackground,
      @required this.price,
      @required this.popularityRank});
}
