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
    final scrollController = ScrollController(initialScrollOffset: 0.0);
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        HomeBackground(),
        AnimatedBuilder(
          animation: scrollController,
          builder: (BuildContext context, Widget child) {
            final offset = scrollController.hasClients ? scrollController.offset : 0;
            final listItemWidth = 40; // TODO: Use real value
            final double statusBarWidth = offset * screenWidth / (listItemWidth * toysData.length);
            return Container(
              height: statusBarHeight,
              width: statusBarWidth,
              color: Colors.green,
            );
          },
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HomeHeader(),
              SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Discover this year's hottest toys", style: Theme.of(context).textTheme.display1),
              ),
              SizedBox(height: 20),
              SearchBox(),
              SizedBox(height: 20),
              Container(
                height: 350,
                child: ListView.builder(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: toysData.length,
                    itemBuilder: (ctx, index) {
                      return HomeToyCard(toyData: toysData[index]);
                    }),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
