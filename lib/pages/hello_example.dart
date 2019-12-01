import 'package:flutter/material.dart';

class HelloExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Hello World'),
      ),
      body: HelloText(),
    );
  }
}

class HelloText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Image.network('https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg'),
      child: Text(
        'Hello',
        style: TextStyle(
          fontSize: 32.0,
        ),
      ),
    );
  }
}
