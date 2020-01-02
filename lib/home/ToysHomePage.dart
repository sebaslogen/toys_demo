import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/SearchBox.dart';

class ToysHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Discover this year's hottest toys",
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 20,),
            SearchBox(),
          ],
        ),
      ),
    ));
  }
}
