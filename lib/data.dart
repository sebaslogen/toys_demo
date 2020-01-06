import 'package:flutter/widgets.dart';

class Toy {
  final String name;
  final String description;
  final String imageName;
  final int hexColorBackground; // Like 0xFFFFFFFF
  final double price;
  final int popularityRank;

  Toy(
      {@required this.name,
      @required this.description,
      @required this.imageName,
      @required this.hexColorBackground,
      @required this.price,
      @required this.popularityRank});
}

// Mock data instead of using a backend
final toysData = [
  Toy(name: 'Robot Podolski', description: 'Awesome autonomous robot', imageName: 'podolski', hexColorBackground: 0xFEBF54, price: 87.99, popularityRank: 136),
];
