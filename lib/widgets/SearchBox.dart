import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  var _expanded = true;

  _onTap() {
    _expanded = !_expanded;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.bounceOut,
      margin: EdgeInsets.symmetric(horizontal: _expanded ? 16.0 : 56.0),
      child: Material(
        color: Colors.white12,
        elevation: _expanded ? 0.0 : 24.0,
        child: InkWell(
          onTap: _onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(6),
            ),
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
          ),
        ),
      ),
    );
  }
}
