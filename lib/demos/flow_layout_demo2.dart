import 'package:flutter/material.dart';

class FlowLayoutDemo extends StatelessWidget {

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
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0.0,
                      top: 0.0,
                      width: 150.0,
                      child: PostItem('http://si1.go2yd.com/get-image/0RsoA7IzKEq', '这是一段文字123'),
                    ),
                    Positioned(
                      left: 160.0,
                      top: 0.0,
                      width: 150.0,
                      child: PostItem('http://www.4gbizhi.com/uploads/allimg/150316/144Ha0M-0.jpg', '哎哎哎'),
                    ),
                    Positioned(
                      left: 0.0,
                      top: 210.0,
                      width: 150.0,
                      child: PostItem('http://www.4gbizhi.com/uploads/allimg/150316/144Ha0M-0.jpg', '哎哎哎66666'),
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 200.0 * 3,
                color: Colors.yellow,
                child: CustomMultiChildLayout(
                  delegate: _CircularLayoutDelegate(
                    itemCount: 3
                  ),
                  children: List.generate(3, (i) {
                    return LayoutId(
                      id: 'button$i',
                      child: PostItem('http://si1.go2yd.com/get-image/0RsoA7IzKEq', '哎哎1哎'),
                    );
                  })
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text('test'),
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
  final _size = 0;

  PostItem(this.pic, this.text);

  get size => _size;

  @override
  Widget build(BuildContext context) {

    RenderBox box = context.findRenderObject();
    print('---- box.size ----');
    // this.size = box.size;
    print(box.size);
    // this._size = box.size;

    return Container(
      color: Colors.green,
      width: 100.0,
      child: Column(
        children: <Widget>[
          Image.network(pic, width: double.infinity),
//                  Image.network('http://www.4gbizhi.com/uploads/allimg/150316/144Ha0M-0.jpg', width: 100.0),
          Container(
            margin: EdgeInsets.all(10.0),
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


class _CircularLayoutDelegate extends MultiChildLayoutDelegate {
  // Offset center;
  final int itemCount;

  _CircularLayoutDelegate({
    @required this.itemCount
  });


  @override
  void performLayout(Size size) {
    // print('===++====');

    // center = Offset(size.width / 2, size.height / 2);
    for (int i = 0; i < itemCount; i++) {
      final String actionButtonId = 'button$i';
      // print(actionButtonId);

      final Size buttonSize = layoutChild(actionButtonId, BoxConstraints.loose(size));

      // print(size);
      // print(buttonSize);

      positionChild(
        actionButtonId,
        Offset(buttonSize.width/10 * i, buttonSize.height * i),
        // Offset(10.0, 10.0),
      );
      // if (hasChild(actionButtonId)) {

      // }
    }
  }

  @override
  bool shouldRelayout(_CircularLayoutDelegate oldDelegate) {
    return itemCount != oldDelegate.itemCount;
  }
}
