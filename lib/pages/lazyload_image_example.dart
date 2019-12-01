import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LazyloadImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lazyload Image Demo'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CachedNetworkImage(
          imageUrl:
              'https://images.unsplash.com/photo-1545546900-d1be172f37b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          // imageUrl: 'https://images.unsplash.com/photo-1545502648-e079208cf734?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          placeholder: (context, url) => Image.asset('assets/placeholder.png'),
          errorWidget: (context, url, error) =>
              Image.asset('assets/placeholder.png'),
          // placeholder: new CircularProgressIndicator(),
          // errorWidget: new Icon(Icons.error),
          width: 200.0,
          fit: BoxFit.cover,
        ),
      ),
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
