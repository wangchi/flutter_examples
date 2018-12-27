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
        title: Text('Flutter Tutorials'),
      ),
      body: Container(
        height: double.infinity,
        color: Color.fromRGBO(0, 0, 0, .05),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0)
                ),
                child: Text(
                  '1. Hello World'
                )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0)
                ),
                child: Text(
                  '2. AppBar'
                )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0)
                ),
                child: Text(
                  '3. TabBar'
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}