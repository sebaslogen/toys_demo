import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
