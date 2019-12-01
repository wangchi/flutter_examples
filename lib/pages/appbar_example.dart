import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('AppBar Example'),
        leading: IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search',
          onPressed: () => debugPrint('Search button pressed!'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
            tooltip: 'Bookmark',
            onPressed: () => debugPrint('Bookmark button pressed!'),
          ),
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menus',
            onPressed: () => debugPrint('Menu button pressed!'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'AppBar Example',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
