import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '../data.dart';

class HomeToyCard extends StatelessWidget {
  const HomeToyCard({
    Key key,
    @required this.toyData,
  }) : super(key: key);

  final Toy toyData;

  @override
  Widget build(BuildContext context) {
    var color = Color(toyData.hexColorBackground);
    return Container(
      margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
          BoxShadow(
            color: color,
            offset: Offset(0, 4.0),
            blurRadius: 7.0,
            spreadRadius: 1.0,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Row: ${toyData.name}'),
        ));
  }
}