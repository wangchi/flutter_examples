import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SliverStaggeredGridDemo extends StatefulWidget {
  @override
  _SliverStaggeredGridDemoState createState() => new _SliverStaggeredGridDemoState();
}


class _SliverStaggeredGridDemoState extends State<SliverStaggeredGridDemo> {

  int tileCount = 10;

  ScrollController _controller = new ScrollController();

  _SliverStaggeredGridDemoState() {
    _controller.addListener(() {
      var maxScroll = _controller.position.maxScrollExtent;
      var pixels = _controller.position.pixels;
      if (pixels >= maxScroll - 200) {
        debugPrint('加载更多！');
        debugPrint('$tileCount');
        loadMore();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    print('--- initState ---');
  }

  loadMore() {
    setState(() {
      tileCount = tileCount + 10;
    });
  }

  List<Widget> itemBuilder() {
    List<Widget> lists = [];
    lists.add(
      Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        width: double.infinity,
        height: 100.0,
        color: Colors.white,
        child: Center(child: Text('123'),),
      )
    );
    lists.add(
      Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0,),
        width: double.infinity,
        height: 100.0,
        color: Colors.white,
        child: Center(child: Text('123'),),
      )
    );

    for (var i = 1; i <= tileCount - 2; i++) {
      EdgeInsets margin = EdgeInsets.only(right: 10.0);
      if (i%2 != 0) {
        margin = EdgeInsets.only(left: 10.0);
      }
      var height = 200 + i * 10;
      lists.add(
        Card(
          margin: margin,
          child: Container(
            // height: 30.0 * (i + 1),
            child: Column(
              children: <Widget>[
                Center(
                  child: CachedNetworkImage(
                    imageUrl: 'https://picsum.photos/300/${height}/',
                    placeholder: Image.asset('assets/placeholder.png'),
                    errorWidget: Image.asset('assets/placeholder.png'),
                    fit: BoxFit.cover
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text('index: $i'),),
                )
              ],
            )
          ),
        )
      );
    }

    // lists.add(
    //   Container(
    //     margin: EdgeInsets.only(left: 10.0, right: 10.0,),
    //     width: double.infinity,
    //     height: 50.0,
    //     color: Colors.white,
    //     child: Center(child: Text('FOOTER'),),
    //   )
    // );

    return lists;
  }

  List<StaggeredTile> tilesBuilder() {
    List<StaggeredTile> lists = [];
    lists.add(StaggeredTile.fit(4));
    lists.add(StaggeredTile.fit(4));
    for (var i = 1; i <= tileCount - 2; i++) {
      lists.add(StaggeredTile.fit(2));
    }
    // lists.add(StaggeredTile.fit(4));
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Sliver Staggered Grid'),
          // backgroundColor: Colors.black12,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, .05),
          child: Column(
            children: <Widget>[
              Flexible(
                child: new CustomScrollView(
                  controller: _controller,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  slivers: <Widget>[
                    new SliverStaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      children: itemBuilder(),
                      staggeredTiles: tilesBuilder(),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      );
  }
}
