import 'package:flutter/material.dart';

// home: AppBarDemo()
class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () => debugPrint('Menu button pressed!'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button pressed!'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'AppBarDemo',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
