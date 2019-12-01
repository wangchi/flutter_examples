import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  @override
  _SliverAppBarDemoState createState() => new _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text('Sliver AppBar'),),
//      body: Container(
//        width: double.infinity,
//        height: double.infinity,
//        color: Colors.black12,
//        child: Center(child: Text('111'),),
//      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
//            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate([
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
              Container(color: Colors.pink),
            ]),
          )
        ],
      ),
    );
  }
}
