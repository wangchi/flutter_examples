import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';


class StickHeaderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () => debugPrint('Menu button pressed!'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button pressed!'),
          ),
        ],
      ),
      body: new Builder(builder: (BuildContext context) {
        return new CustomScrollView(
          slivers: _buildSlivers(context),
        );
      }),
    );
  }

  List<Widget> _buildSlivers(BuildContext context) {
    List<Widget> slivers = new List<Widget>();

    //slivers.add(_buildExample());
    //slivers.add(_buildBuilderExample());
    int i = 0;
    slivers.add(SliverAppBar(
      // backgroundColor: Colors.blue.withOpacity(0.5),
      // title: Text('text'),
      // pinned: true,
      floating: true,
      // expandedHeight: 200.0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(260.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text('place something in appbar'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 100.0,
                color: Colors.white,
                child: Center(
                  child: Text('place something in appbar'),
                ),
              ),
            ]
          )
        ),
      ),
    ));

    // slivers.add(Container(
    //   width: double.infinity,
    //   height: 100.0,
    //   child: Center(
    //     child: Text('test'),
    //   ),
    // ));
    // slivers.add(

    // );

    // slivers.add(SliverAppBar(
    //   backgroundColor: Colors.yellow.withOpacity(0.5),
    //   title: Text('text'),
    //   pinned: true,
    // ));
    // slivers.addAll(_buildHeaderBuilderLists(context, i, i += 1));
    // slivers.addAll(_buildLists(context, i, i += 3));
    slivers.add(_buildLists2(context, i, i += 3));
    // slivers.addAll(_buildGrids(context, i, i += 3));
    // slivers.addAll(_buildSideHeaderGrids(context, i, i += 3));
    // slivers.addAll(_buildHeaderBuilderLists(context, i, i += 5));
    return slivers;
  }

  Widget _buildLists2(BuildContext context, int firstIndex, int count) {
    bool offTab2 = true;
    return SliverStickyHeader(
        header: Container(
          width: double.infinity,
          height: 50.0,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Text('tab1'),
              Text('tab1'),
              Text('tab1'),
            ],
          ),
        ),
        sliver: SliverList(
          delegate: new SliverChildBuilderDelegate(
            (context, i) => Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        Text('tab1'),
                        Text('tab2'),
                      ],
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Offstage(
                        offstage: !offTab2,
                        child: Container(
                          height: 1000.0,
                          color: Colors.green,
                          child: Text('tab1'),
                        ),
                      ),
                      Offstage(
                        offstage: offTab2,
                        child: Text('tab2'),
                      )
                    ],
                  )
                ],
              ),
            ),
            childCount: 1,
          ),
        ),
      );
  }

  List<Widget> _buildLists(BuildContext context, int firstIndex, int count) {
    return List.generate(count, (sliverIndex) {
      sliverIndex += firstIndex;
      return new SliverStickyHeader(
        header: _buildHeader(sliverIndex),
        sliver: new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (context, i) => new ListTile(
                  leading: new CircleAvatar(
                    child: new Text('$sliverIndex'),
                  ),
                  title: new Text('List tile #$i'),
                ),
            childCount: 4,
          ),
        ),
      );
    });
  }

  List<Widget> _buildHeaderBuilderLists(
      BuildContext context, int firstIndex, int count) {
    return List.generate(count, (sliverIndex) {
      sliverIndex += firstIndex;
      return new SliverStickyHeaderBuilder(
        builder: (context, state) =>
            _buildAnimatedHeader(context, sliverIndex, state),
        sliver: new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (context, i) => new ListTile(
                  leading: new CircleAvatar(
                    child: new Text('$sliverIndex'),
                  ),
                  title: new Text('List tile #$i'),
                ),
            childCount: 4,
          ),
        ),
      );
    });
  }

  List<Widget> _buildGrids(BuildContext context, int firstIndex, int count) {
    return List.generate(count, (sliverIndex) {
      sliverIndex += firstIndex;
      return new SliverStickyHeader(
        header: _buildHeader(sliverIndex),
        sliver: new SliverGrid(
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          delegate: new SliverChildBuilderDelegate(
            (context, i) => GestureDetector(
                  onTap: () => Scaffold.of(context).showSnackBar(
                      new SnackBar(content: Text('Grid tile #$i'))),
                  child: new GridTile(
                    child: Card(
                      child: new Container(
                        color: Colors.green,
                      ),
                    ),
                    footer: new Container(
                      color: Colors.white.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          'Grid tile #$i',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
            childCount: 9,
          ),
        ),
      );
    });
  }

  List<Widget> _buildSideHeaderGrids(
      BuildContext context, int firstIndex, int count) {
    return List.generate(count, (sliverIndex) {
      sliverIndex += firstIndex;
      return new SliverStickyHeader(
        overlapsContent: true,
        header: _buildSideHeader(context, sliverIndex),
        sliver: new SliverPadding(
          padding: new EdgeInsets.only(left: 60.0),
          sliver: new SliverGrid(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 1.0),
            delegate: new SliverChildBuilderDelegate(
              (context, i) => GestureDetector(
                    onTap: () => Scaffold.of(context).showSnackBar(
                        new SnackBar(content: Text('Grid tile #$i'))),
                    child: new GridTile(
                      child: Card(
                        child: new Container(
                          color: Colors.orange,
                        ),
                      ),
                      footer: new Container(
                        color: Colors.white.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            'Grid tile #$i',
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
              childCount: 12,
            ),
          ),
        ),
      );
    });
  }

  Widget _buildHeader(int index, {String text}) {
    return new Container(
      height: 60.0,
      color: Colors.lightBlue,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: new Text(
        text ?? 'Header #$index',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildSideHeader(BuildContext context, int index, {String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: new SizedBox(
          height: 44.0,
          width: 44.0,
          child: GestureDetector(
            onTap: () => Scaffold
                .of(context)
                .showSnackBar(new SnackBar(content: Text('$index'))),
            child: new CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              foregroundColor: Colors.white,
              child: new Text('$index'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedHeader(
      BuildContext context, int index, SliverStickyHeaderState state) {
    return GestureDetector(
      onTap: () => Scaffold
          .of(context)
          .showSnackBar(new SnackBar(content: Text('$index'))),
      child: new Container(
        height: 60.0,
        color: (state.isPinned ? Colors.pink : Colors.lightBlue)
            .withOpacity(1.0 - state.scrollPercentage),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        child: new Text(
          'Header #$index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildExample() {
    return new SliverStickyHeader(
      header: new Container(
        height: 60.0,
        color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        child: new Text(
          'Header #0',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      sliver: new SliverList(
        delegate: new SliverChildBuilderDelegate(
          (context, i) => new ListTile(
                leading: new CircleAvatar(
                  child: new Text('0'),
                ),
                title: new Text('List tile #$i'),
              ),
          childCount: 4,
        ),
      ),
    );
  }

  Widget _buildBuilderExample() {
    return new SliverStickyHeaderBuilder(
      builder: (context, state) => new Container(
            height: 60.0,
            color: (state.isPinned ? Colors.pink : Colors.lightBlue)
                .withOpacity(1.0 - state.scrollPercentage),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              'Header #1',
              style: const TextStyle(color: Colors.white),
            ),
          ),
      sliver: new SliverList(
        delegate: new SliverChildBuilderDelegate(
          (context, i) => new ListTile(
                leading: new CircleAvatar(
                  child: new Text('0'),
                ),
                title: new Text('List tile #$i'),
              ),
          childCount: 4,
        ),
      ),
    );
  }
}

class SimpleScaffold extends StatelessWidget {
  const SimpleScaffold({
    Key key,
    this.title,
    this.child,
  }) : super(key: key);

  final String title;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: child,
    );
  }
}