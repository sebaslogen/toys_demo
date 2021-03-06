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

// Example Image.asset("assets/images/${toy.imageName}.png")
// Mock data instead of using a backend
final toysData = [
  Toy(name: 'Robot Podolski', description: 'Awesome autonomous robot', imageName: 'podolski', hexColorBackground: 0xFFE6940D, price: 87.99, popularityRank: 136),
  Toy(name: 'Wall-E', description: 'Cutest robot ever ❤️', imageName: 'wall-e', hexColorBackground: 0xFF430D9E, price: 124.99, popularityRank: 17),
  Toy(name: 'Tangon', description: 'The Octo-Robot️', imageName: 'tangon', hexColorBackground: 0xFFD73E44, price: 54.99, popularityRank: 185),
];
