import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.green,
            alignment: Alignment(0.0, 0.0),
            child: Text('One',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
          Container(
            color: Colors.yellow,
            alignment: Alignment(0.0, 0.0),
            child: Text('Two',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
          Container(
            color: Colors.pink,
            alignment: Alignment(0.0, 0.0),
            child: Text('Three',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
