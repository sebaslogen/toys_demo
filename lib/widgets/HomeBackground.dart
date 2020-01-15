import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.orange, BlendMode.hue),
          child: CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            imageUrl: 'https://cdn.pixabay.com/photo/2016/10/29/10/13/abstract-1780373_1280.png',
          ),
        ),
        BackdropFilter(
          child: Container(color: Colors.deepOrangeAccent.withOpacity(0.15)),
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        ),
      ],
    );
  }
}
