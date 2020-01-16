import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data.dart';

class ToyImageHeader extends StatefulWidget {
  const ToyImageHeader({
    Key key,
    @required this.toy,
  }) : super(key: key);

  final Toy toy;

  @override
  _ToyImageHeaderState createState() => _ToyImageHeaderState();
}

class _ToyImageHeaderState extends State<ToyImageHeader> {
  var _tintColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hero(
        tag: widget.toy.imageName,
        child: TweenAnimationBuilder(
            tween: ColorTween(begin: Colors.white, end: Colors.red),
            duration: Duration(seconds: 2),
            builder: (_, Color color, __) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                child: Image.asset("assets/images/${widget.toy.imageName}.png", height: 300, alignment: Alignment.bottomCenter),
              );
            }),
      ),
    );
  }
}
