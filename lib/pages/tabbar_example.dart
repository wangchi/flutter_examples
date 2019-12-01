import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: Text('TabBar Example'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.mail),
              ),
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.live_tv),
              ),
              Tab(
                icon: Icon(Icons.view_agenda),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.mail,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.mail,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.live_tv,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.view_agenda,
              size: 128.0,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
