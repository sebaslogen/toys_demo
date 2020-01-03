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
        HomeBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HomeHeader(),
                  SizedBox(height: 20),
                  Text("Discover this year's hottest toys", style: Theme.of(context).textTheme.display1),
                  SizedBox(height: 20),
                  SearchBox(),
                  SizedBox(height: 20),
                  Container(height: 300, color: Colors.purple),
                  SizedBox(height: 20),
                  Container(height: 400, color: Colors.orange),
                  SizedBox(height: 20),
                  Container(height: 300, color: Colors.blue),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
        child: CachedNetworkImage(
            width: 55,
            height: 55,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            imageUrl: 'https://www.nintendonyc.com/_ui/img/nbassadors/miis/Carlos_Ortiz_Mii_Web.png'),
      ),
      title: Text('Sebas LG', style: Theme.of(context).textTheme.title),
      subtitle: Text('Premium customer', style: Theme.of(context).textTheme.caption),
      trailing: Icon(Icons.shopping_cart),
    );
  }
}

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/29/10/13/abstract-1780373_1280.png',
    );
  }
}
