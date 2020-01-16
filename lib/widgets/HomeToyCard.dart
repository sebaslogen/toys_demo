import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toys_demo/home/ToyPage.dart';

import '../data.dart';

class HomeToyCard extends StatelessWidget {
  const HomeToyCard({
    Key key,
    @required this.toyData,
  }) : super(key: key);

  final Toy toyData;

  @override
  Widget build(BuildContext context) {
    var hexColor = toyData.hexColorBackground;
    final color = Color(hexColor);
    final darkerColor = Color.lerp(Colors.black, color, 0.5);
    return Container(
        margin: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.8],
                colors: [color, darkerColor]),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: darkerColor,
                offset: Offset(0, 22.0),
                blurRadius: 18.0,
                spreadRadius: -12,
              )
            ]),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, ToyPage.routeName, arguments: toyData),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        toyData.popularityRank.toString(),
                        style: Theme.of(context).textTheme.subtitle.copyWith(color: Colors.white),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Hero(
                    tag: toyData.imageName,
                    child: Image.asset("assets/images/${toyData.imageName}.png",
                        width: 120, height: 190, alignment: Alignment.bottomCenter),
                  ),
                  SizedBox(height: 20),
                  Text(
                    toyData.name,
                    style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
