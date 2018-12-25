import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';


List<IntSize> _createSizes(int count) {
  Random rnd = new Random();
  return new List.generate(count,
      (i) => new IntSize((rnd.nextInt(500) + 200), rnd.nextInt(800) + 200));
}

class Staggered extends StatelessWidget {
  static const int _kItemCount = 10;
  final List<IntSize> _sizes;

  Staggered() : _sizes = _createSizes(_kItemCount).toList();

  @override
  Widget build(BuildContext context) {
    print('----------');
    // print('_sizes:');
    // print(_sizes);
    // print(_sizes.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid View Demo'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 50.0,
              color: Colors.white,
              child: Center(child: Text('TEST')),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 100.0,
                      color: Colors.white,
                      child: Center(child: Text('Content')),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: double.infinity,
                      height: 1000.0,
                      // height: double.maxFinite,
                      child: StaggeredGridView.countBuilder(
                        physics: NeverScrollableScrollPhysics(),
                        primary: false,
                        crossAxisCount: 4,
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,
                        itemBuilder: (context, index) => PostCard(index, _sizes[index]),
                        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 50.0,
                      color: Colors.white,
                      child: Center(child: Text('Footer')),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntSize {
  const IntSize(this.width, this.height);

  final int width;
  final int height;
}

class PostCard extends StatelessWidget {
  const PostCard(this.index, this.size);

  final IntSize size;
  final int index;

  @override
  Widget build(BuildContext context) {
    print(size.width);
    print(size.height);
    return new Card(
      child: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Center(
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/${size.width}/${size.height}/',
                  placeholder: Image.asset('assets/placeholder.png'),
                  errorWidget: Image.asset('assets/placeholder.png'),
                  fit: BoxFit.cover
                )
                // child: new FadeInImage.memoryNetwork(
                //   placeholder: kTransparentImage,
                //   image: 'https://picsum.photos/${size.width}/${size.height}/',
                //   // image: 'https://raw.githubusercontent.com/wangchi/code2018/master/css/%E7%80%91%E5%B8%83%E6%B5%81/images/pic${index+1}.jpg',
                // ),
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  'Image number $index',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  'Width: ${size.width}',
                  style: const TextStyle(color: Colors.grey),
                ),
                new Text(
                  'Height: ${size.height}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
