import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toys_demo/widgets/HomeBackground.dart';
import 'package:toys_demo/widgets/HomeHeader.dart';
import 'package:toys_demo/widgets/HomeToyCard.dart';

import '../data.dart';
import '../widgets/SearchBox.dart';

class ToysHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        HomeBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HomeHeader(),
                SizedBox(height: 20),
                Text("Discover this year's hottest toys", style: Theme.of(context).textTheme.display1),
                SizedBox(height: 20),
                SearchBox(),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: toysData.length,
                      itemBuilder: (ctx, index) {
                        return HomeToyCard(toyData: toysData[index]);
                      }),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
