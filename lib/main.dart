import 'package:flutter/material.dart';

import 'home/ToysHomePage.dart';
import 'home/ToyPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.orangeAccent,
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                display1: const TextStyle(fontFamily: 'Quicksand', fontSize: 28, color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
                title: const TextStyle(fontFamily: 'Quicksand', fontSize: 18, fontWeight: FontWeight.bold),
                caption: const TextStyle(fontFamily: 'Quicksand', fontSize: 14, fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(title: const TextStyle(fontFamily: 'Quicksand', fontSize: 28, fontWeight: FontWeight.bold)))),
      home: ToyPage(),
    );
  }
}
