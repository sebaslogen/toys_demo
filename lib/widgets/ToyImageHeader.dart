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
  final _tintColors = [
    NamedColor('White', Colors.white),
    NamedColor('Blue', Colors.blue),
    NamedColor('Red', Colors.red),
    NamedColor('Purple', Colors.deepPurpleAccent)
  ];
  var _tintColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Hero(
            tag: widget.toy.imageName,
            child: TweenAnimationBuilder(
                tween: ColorTween(begin: Colors.white, end: _tintColors[_tintColorIndex].color),
                duration: Duration(seconds: 2),
                builder: (_, Color color, __) {
                  return ColorFiltered(
                    colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                    child: Image.asset("assets/images/${widget.toy.imageName}.png", height: 300, alignment: Alignment.bottomCenter),
                  );
                }),
          ),
          Slider(
            value: _tintColorIndex.ceilToDouble(),
            onChanged: (newVal) {
              setState(() {
                _tintColorIndex = newVal.floor();
              });
            },
            activeColor: _tintColors[_tintColorIndex].color,
            min: 0,
            max: _tintColors.length.ceilToDouble() - 1,
            divisions: _tintColors.length - 1,
            label: "${_tintColors[_tintColorIndex].name}",
          ),
        ],
      ),
    );
  }
}

class NamedColor {
  final Color color;
  final String name;

  NamedColor(this.name, this.color);
}
