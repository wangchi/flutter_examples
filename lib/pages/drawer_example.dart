import 'package:flutter/material.dart';

// custom drawer icon button
// https://stackoverflow.com/questions/47435231/open-drawer-on-clicking-appbar

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Drawer Example'),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   tooltip: 'Menu',
        //   onPressed: () => debugPrint('Menu button pressed!'),
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     tooltip: 'Search',
        //     onPressed: () => debugPrint('Search button pressed!'),
        //   ),
        // ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(
                      'https://img.t.sinajs.cn/t6/skin/skinvip334/images/body_bg_page.jpg?id=1410943047113'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                'Blues Dari',
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                'bluesdari@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://tvax3.sinaimg.cn/crop.0.0.888.888.180/007D9ftkly8g8pf2tm1fbj30oo0oowg4.jpg?KID=imgbed,tva&Expires=1575724146&ssig=OobPg3g2Fk'),
              ),
            ),
            ListTile(
              title: Text('Favourite'),
              leading: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Close Drawer'),
              leading: Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Back Home'),
              leading: Icon(Icons.home),
              onTap: () => Navigator.of(context).pushNamed('/'),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Favourite'),
              leading: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Close Drawer'),
              leading: Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Back Home'),
              leading: Icon(Icons.home),
              onTap: () => Navigator.of(context).pushNamed('/'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Drawer Example',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
