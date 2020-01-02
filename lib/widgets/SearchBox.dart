import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(6)),
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Text(
            "Search",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
