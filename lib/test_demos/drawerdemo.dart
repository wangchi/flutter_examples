import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage('https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: new Text('walkerbe'),
            accountEmail: new Text('hiwangchi@gmail.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage('https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg'),
            ),
          ),
          ListTile(
            title: Text('Favourite'),
            leading: Icon(Icons.favorite),
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.people),
            onTap: () => Navigator.of(context).pushNamed('/about_page'),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.pop(context),
          )
        ]
      )
    );
  }
}
