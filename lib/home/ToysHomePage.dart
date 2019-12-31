import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToysHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Toys Home"),
        ),
        body: Center(
            child: Text(
          "Hola mundo",
          style: Theme.of(context).textTheme.title,
        )));
  }
}
