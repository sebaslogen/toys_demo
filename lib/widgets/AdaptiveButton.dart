import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  const AdaptiveButton({
    Key key,
    @required this.text,
    @required this.action,
  }) : super(key: key);

  final String text;
  final Function action;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        child: Text(text),
        onPressed: action,
      );
    } else {
      return FlatButton(
        child: Text(text),
        onPressed: action,
      );
    }
  }
}
