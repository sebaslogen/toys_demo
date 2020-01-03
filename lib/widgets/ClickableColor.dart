import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClickableColor extends StatefulWidget {
  const ClickableColor({
    Key key,
  }) : super(key: key);

  @override
  _ClickableColorState createState() => _ClickableColorState();
}

class _ClickableColorState extends State<ClickableColor> {
  final List colors = [Colors.purple, Colors.red, Colors.green, Colors.yellow, Colors.indigo];
  Color _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = colors[0];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _currentColor,
      child: InkWell(
          onTap: () {
            setState(() {
              _currentColor = colors[Random().nextInt(colors.length)];
            });
          },
          child: Container(height: 300)),
    );
  }
}
