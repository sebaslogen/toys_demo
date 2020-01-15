import 'package:flutter/material.dart';

class ToyNavigationHeader extends StatelessWidget {
  const ToyNavigationHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
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
    );
  }
}
