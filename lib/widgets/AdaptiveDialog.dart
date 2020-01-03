import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AdaptiveButton.dart';

class AdaptiveDialog extends StatelessWidget {
  const AdaptiveDialog({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    final okText = 'Okay';
    final action = () => Navigator.of(context).pop();
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          AdaptiveButton(text: okText, action: action),
        ],
      );
    } else {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          AdaptiveButton(text: okText, action: action),
        ],
      );
    }
  }
}
