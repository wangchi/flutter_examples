import 'package:flutter/material.dart';

class LoadingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Demo'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      )
    );
  }
}

    // return CachedNetworkImage(
    //   imageUrl: 'https://ib11.go2yd.com/image.php?url=' + doc['image'],
    //   placeholder: Image.asset('assets/placeholder.jpg'),
    //   errorWidget: Image.asset('assets/placeholder.jpg'),
    //   width: 164.0,
    //   fit: BoxFit.cover
    // );