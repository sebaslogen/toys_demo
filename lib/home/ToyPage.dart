import 'package:flutter/material.dart';

class ToyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      body: SafeArea(
        child: IconButton(
          padding: EdgeInsets.all(0),
          icon: Container(
            padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10,),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              )),
          onPressed: Navigator.of(context).pop,
        ),
      ),
    );
  }
}
