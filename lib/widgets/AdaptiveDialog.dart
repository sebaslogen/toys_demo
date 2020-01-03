import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          CupertinoButton(
            child: Text(okText),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    } else {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text(okText),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    }
  }
}
