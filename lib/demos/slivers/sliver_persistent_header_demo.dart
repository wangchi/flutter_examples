import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/widgets/empty_app_bar.dart';

class SliverPersistentHeaderDemo extends StatefulWidget {
  @override
  _SliverPersistentHeaderDemoState createState() => new _SliverPersistentHeaderDemoState();
}

class _SliverPersistentHeaderDemoState extends State<SliverPersistentHeaderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text('Sliver Collapsing List Demo'),),
//      appBar: EmptyAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              child: CollapsingList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatefulWidget {
  @override
  _CollapsingListState createState() => new _CollapsingListState();
}

class _CollapsingListState extends State<CollapsingList> {
  double _opacity = 1.0;
  bool _isShowTopContent = true;

  SliverPersistentHeader makeHeader(String headerText, double paddingTop) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 102.0,
        maxHeight: 254.0,
        child: Container(
          padding: EdgeInsets.only(top: paddingTop),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Color.fromRGBO(239, 239, 239, 1.0), width: 1.0)),
            image: DecorationImage(
              image: NetworkImage('https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg',),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _isShowTopContent ? Container(
                height: 38.0,
                color: Color.fromRGBO(255, 255, 255, _opacity),
                child: Center(
                  child: Text('top content'),
                ),
              ): Container(),
              Container(
                height: 38.0,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  ScrollController _controller = new ScrollController();

  @override
  initState() {
    super.initState();
    _controller.addListener(() {
      var maxScroll = _controller.position.maxScrollExtent;
      var pixels = _controller.position.pixels;
      // set a value to preload
      var offset = 0;
//      print(pixels);
//      _opacity = (100 - pixels) / 100;
      if (pixels <= 100 && pixels >= 0) {
        print((100 - pixels) / 100);
        setState(() {
          _opacity = (100 - pixels) / 100;
        });
      }

      if (pixels > 100) {
        setState(() {
          _isShowTopContent = false;
        });
      } else {
        setState(() {
          _isShowTopContent = true;
        });
      }
      if (pixels >= maxScroll - offset) {
        debugPrint('+++++ load more ++++');
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final double topPadding = MediaQuery.of(context).padding.top;

    return CustomScrollView(
      controller: _controller,
      slivers: <Widget>[
        makeHeader('Header Section1', topPadding),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.0,),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          children: <Widget>[
            Container(color: Colors.white, height: 100.0),
            Container(color: Colors.white, height: 100.0),
            Container(color: Colors.white, height: 100.0),
            Container(color: Colors.white, height: 100.0),
            Container(color: Colors.white, height: 100.0),
            Container(color: Colors.white, height: 100.0),
          ],
        ),
//        makeHeader('Header Section2'),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(margin: EdgeInsets.all(10.0),color: Colors.white,),
              Container(margin: EdgeInsets.all(10.0),color: Colors.white,),
              Container(margin: EdgeInsets.all(10.0),color: Colors.white,),
            ]
          ),
        ),
      ],
    );
  }
}