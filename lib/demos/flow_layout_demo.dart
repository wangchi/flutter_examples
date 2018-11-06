import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FlowLayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
      ),
      body: Container(
        color: Color.fromRGBO(0, 0, 0, .03),
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
              color: Colors.yellow,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: CustomMultiChildLayout(
                      delegate: _CircularLayoutDelegate(
                        itemCount: 1
                      ),
                      children: <Widget>[
                        LayoutId(
                          id: 'first',
                          child: Container(color: Colors.green, width: 50.0, height: 50.0),
                        ),
                      ],
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
              child: Wrap(
                children: <Widget>[
                  Container(width: 50.0, height: 50.0, child: Text('Wrap'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                  Container(width: 50.0, height: 50.0, child: Text('123'),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 100.0,
              color: Colors.white,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => new Container(
                    color: Colors.green,
                    child: new Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text('$index'),
                      ),
                    )),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 100.0,
              color: Colors.white,
              child: CustomScrollView(
                slivers: <Widget>[
                  const SliverAppBar(
                    pinned: true,
                    expandedHeight: 250.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('Demo'),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 4.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.teal[100 * (index % 9)],
                          child: Text('grid item $index'),
                        );
                      },
                      childCount: 20,
                    ),
                  ),
                  SliverFixedExtentList(
                    itemExtent: 50.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.lightBlue[100 * (index % 9)],
                          child: Text('list item $index'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.white,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this would produce 2 rows.
                crossAxisCount: 2,
                // Generate 100 Widgets that display their index in the List
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              height: 200.0,
              child: Flow(
                delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.yellow,
                    child: Center(
                      child: Text('Flow'),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.yellow,
                    child: Center(
                      child: Text('Flow'),
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      )
    );
  }
}


class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
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
    print('=======');

    // center = Offset(size.width / 2, size.height / 2);
    for (int i = 0; i < itemCount; i++) {
      final String actionButtonId = 'first';
      print(actionButtonId);

      // final Size buttonSize = layoutChild(actionButtonId, BoxConstraints.loose(size));

      // print(buttonSize);

      positionChild(
        actionButtonId,
        // Offset(buttonSize.width * i, buttonSize.height * i),
        Offset(10.0, 10.0),
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
