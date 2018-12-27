import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        height: double.infinity,
        // color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                // height: 1000.0,
                child: Text(
                  '1. Hello World'
                )
              ),
              Container(
                width: double.infinity,
                child: Text(
                  '2. AppBar'
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}