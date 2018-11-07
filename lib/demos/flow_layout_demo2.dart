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
                height: 200.0 * 10,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: CustomMultiChildLayout(
                        delegate: _CircularLayoutDelegate(
                          itemCount: 10
                        ),
                        children: List.generate(10, (i) {
                          return LayoutId(
                            id: 'button$i',
                            child: Container(
                              color: Colors.green,
                              width: 200.0,
                              height: 200.0
                            ),
                          );
                        })
                      ),
                    ),
                  ],
                )
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
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text('test'),
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


class _CircularLayoutDelegate extends MultiChildLayoutDelegate {
  // Offset center;
  final int itemCount;

  _CircularLayoutDelegate({
    @required this.itemCount
  });


  @override
  void performLayout(Size size) {
    print('===++====');

    // center = Offset(size.width / 2, size.height / 2);
    for (int i = 0; i < itemCount; i++) {
      final String actionButtonId = 'button$i';
      print(actionButtonId);

      final Size buttonSize = layoutChild(actionButtonId, BoxConstraints.loose(size));

      print(size);
      print(buttonSize);

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
