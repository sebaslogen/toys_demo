import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/SearchBox.dart';

class ToysHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            CachedNetworkImage(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              imageUrl: 'https://cdn.pixabay.com/photo/2016/10/29/10/13/abstract-1780373_1280.png',
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Discover this year's hottest toys",
                        style: Theme.of(context).textTheme.display1,
                      ),
                      SizedBox(height: 20,),
                      SearchBox(),
                      SizedBox(height: 20,),
                      Container(height: 300, color: Colors.purple,),
                      SizedBox(height: 20,),
                      Container(height: 400, color: Colors.orange,),
                      SizedBox(height: 20,),
                      Container(height: 300, color: Colors.blue,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
