import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SliverStaggeredGridDemo extends StatelessWidget {

  List<Widget> grids() {
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

    for (var i = 1; i <= 14; i++) {
      EdgeInsets margin = EdgeInsets.only(right: 10.0);
      if (i%2 != 0) {
        margin = EdgeInsets.only(left: 10.0);
      }
      lists.add(
        Card(
          margin: margin,
          child: Container(
            height: 30.0 * (i + 1),
            child: Center(child: Text('$i'),),
          ),
        )
      );
    }

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
                  primary: false,
                  scrollDirection: Axis.vertical,
                  slivers: <Widget>[
                    new SliverStaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      children: grids(),
                      staggeredTiles: const <StaggeredTile>[
                        const StaggeredTile.fit(4),
                        const StaggeredTile.fit(4),

                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),

                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),

                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                        const StaggeredTile.fit(2),
                      ],
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
