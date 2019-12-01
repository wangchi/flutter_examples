import 'dart:ui' as ui;
import 'dart:async';
import 'package:flutter/material.dart';

class GetImageInfoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Image Info Demo')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
            (index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                // color: Colors.red,
                // height: 100.0,
                child: imageDemo(),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<ui.Image> _getImage(String imageUrl) {
    Completer<ui.Image> completer = new Completer<ui.Image>();
    new NetworkImage(imageUrl).resolve(new ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo info, bool _) {
          if (!completer.isCompleted) {
            return completer.complete(info.image);
          }
        },
      ),
    );
    return completer.future;
  }

  Widget imageDemo() {
    var imageUrl =
        'https://images.unsplash.com/photo-1545546900-d1be172f37b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';
    // imageUrl = 'https://images.unsplash.com/photo-1545502648-e079208cf734?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';

    return FutureBuilder<ui.Image>(
      future: _getImage(imageUrl),
      builder: (BuildContext context, AsyncSnapshot<ui.Image> snapshot) {
        if (snapshot.hasData) {
          ui.Image image = snapshot.data;
          var imageSize = {'width': image.width, 'height': image.height};
          var imageWidth = imageSize['width'];
          var imageHeight = imageSize['height'];
          print('image:');
          print(image);
          print(imageSize);
          return Column(
            children: <Widget>[
              Image(
                image: NetworkImage(imageUrl),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text('Image Size: $imageWidth x $imageHeight')
            ],
          );
        } else {
          // return Text('loading...');
          return Image(
            image: AssetImage('assets/placeholder.png'),
            width: double.infinity,
            fit: BoxFit.cover,
          );
        }
      },
    );
  }
}
