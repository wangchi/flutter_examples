import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      margin: EdgeInsets.all(8.0),
      // width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconBadge(Icons.phone_iphone),
          IconBadge(Icons.phone_android),
          // Icon(Icons.phone_iphone, size: 128.0, color: Colors.black38),
          // Icon(Icons.phone_android, size: 128.0, color: Colors.black38)
        ]
      ),
    );
  }
}


class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(212, 61, 61, 1.0),
    );
  }
}