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
            child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          padding: EdgeInsets.all(10),
          child: Text(
            "Hola mundo",
            style: Theme.of(context).textTheme.title,
          ),
        )));
  }
}
