import 'package:flutter/material.dart';
import 'package:toys_demo/widgets/AdaptiveDialog.dart';

import '../data.dart';

class ToyPage extends StatelessWidget {
  static const routeName = '/ToyPage';
  final Toy toy;

  const ToyPage({Key key, this.toy}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/${toy.imageName}.png",
                        height: 300, alignment: Alignment.bottomCenter),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 4),
                    child: Text(
                      toy.name,
                      style: Theme.of(context).textTheme.title.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Text(
                      toy.description,
                      style: Theme.of(context).textTheme.subhead.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.orange[700],
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Ranking', style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white)),
                          Text(toy.popularityRank.toString(),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white)),
                          SizedBox(height: 24),
                          Text('Price', style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white)),
                          Text(toy.price.toString(),
                              style: Theme.of(context).textTheme.title.copyWith(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _showShopDialog(context),
                    child: Container(
                      margin: EdgeInsets.all(18),
                      height: 50,
                      child: Icon(Icons.shopping_cart, size: 40, color: Colors.purple,),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.orangeAccent[700], //orange[800],
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.orangeAccent[100], //orange[300],
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Container(
                      padding: EdgeInsets.only(
                        left: 14,
                        right: 14,
                        top: 8,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      )),
                  onPressed: Navigator.of(context).pop,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _showShopDialog(BuildContext context) {
    final title = 'Shopping cart';
    final message = 'Item added to shopping cart';
    showDialog(context: context, builder: (ctx) => AdaptiveDialog(title: title, message: message));
  }
}
