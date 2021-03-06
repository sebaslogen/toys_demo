import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AdaptiveDialog.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: ListTile(
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
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => _showDialog(context),
          )),
    );
  }

  void _showDialog(BuildContext context) {
    final title = 'Shopping cart';
    final message = 'Your shopping cart is empty';
    showDialog(context: context, builder: (ctx) => AdaptiveDialog(title: title, message: message));
  }
}
