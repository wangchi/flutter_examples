import 'package:flutter/material.dart';
import 'package:flutter_tutorials/adapter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class WaterfallDemo3 extends StatefulWidget {
  @override
  _WaterfallDemoState createState() => new _WaterfallDemoState();
}


class _WaterfallDemoState extends State<WaterfallDemo3> {

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  List<Map> posts = [];

  void getPosts() {
    posts.addAll([
      {
        'pic': 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic1.jpg',
        'title': '这是一段文字'
      },
      {
        'pic': 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic2.jpg',
        'title': '这是一段文字'
      },
      {
        'pic': 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic3.jpg',
        'title': '这是一段文字'
      },
      {
        'pic': 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic4.jpg',
        'title': '这是一段文字'
      },
      {
        'pic': 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic5.jpg',
        'title': '这是一段文字'
      }
    ]);
  }

  List<Widget> buildPostsfalls() {
    List<Widget> lists = <Widget>[];

    Adapter adapter = Adapter(width: 750, height: 1334)..init(context);

    print('Design Width: ${adapter.designWidth}');
    print('Design Height: ${adapter.designHeight}');
    print('Device Width: ${adapter.screenWidth}');
    print('Device Height: ${adapter.screenHeight}');
    print('Device Pixel Ratio: ${adapter.pixelRatio}');
    print('Scale Width: ${adapter.scaleWidth}');
    print('Scale Height: ${adapter.scaleHeight}');
    print(adapter.width(92));

    // var itemWidth = 150.0;
    var itemWidth = adapter.screenWidth / 2 - 15.0;

    posts.forEach((post) {

      // var item = Positioned(
      //   left: 0.0,
      //   top: 0.0,
      //   width: 150.0,
      //   child: PostItem(post['pic'], post['title']),
      // );

      // print(item.height);

      lists.add(PostItem(post['pic'], post['title'], itemWidth));
    });

    return lists;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
      ),
      body: Container(
        color: Color.fromRGBO(0, 0, 0, .03),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text('test'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 500.0,
                // color: Colors.white,
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: buildPostsfalls()
                )
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 1000.0,
                color: Colors.white,
                child: StaggeredGridView.countBuilder(
                  primary: false,
                  shrinkWrap: false,
                  physics: ScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => Container(
                    color: Colors.green,
                    child: Image.network('https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic${index}.jpg', width: double.infinity,),
                  ),
                  staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}

class PostItem extends StatelessWidget {
  final String pic;
  final String text;
  final double itemWidth;

  PostItem(this.pic, this.text, this.itemWidth);

  @override
  Widget build(BuildContext context) {

    RenderBox getBox = context.findRenderObject();
    print('FFFFFF');
    // print(context.size);

    return Container(
      color: Colors.green,
      width: itemWidth,
      // height: 150.0,
      child: Column(
        children: <Widget>[
          Image.network(pic, width: double.infinity),
//                  Image.network('http://www.4gbizhi.com/uploads/allimg/150316/144Ha0M-0.jpg', width: 100.0),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            width: double.infinity,
            height: 50.0,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      )
    );
  }
}


