import 'package:flutter/material.dart';
import 'package:flutter_tutorials/test_demos/drawerdemo.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
      ),
      drawer: DrawerDemo(),
      body: Center(
        child: Text(
          'Favourite',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
