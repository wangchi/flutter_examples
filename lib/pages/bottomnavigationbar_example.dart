import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/video_example.dart';
import '../pages/find.dart';
import '../pages/favourite.dart';

class BottomNavigationBarExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtomNavigationBarDemoState();
  }
}

class _ButtomNavigationBarDemoState extends State<BottomNavigationBarExample> {
  int _currentIndex = 0;

  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(Home())
      ..add(VideoExample())
      ..add(FindPage())
      ..add(FavouritePage());
    super.initState();
  }

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            title: Text('Video'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            title: Text('Find'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favourite'),
          ),
        ],
      ),
    );
  }
}
