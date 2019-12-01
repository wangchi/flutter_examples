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
                      'https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: new Text('Blues Dari'),
              accountEmail: new Text('bluesdari@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg'),
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
