import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewDemo extends StatefulWidget {
  @override
  WebViewDemoState createState() => new WebViewDemoState();
}

class WebViewDemoState extends State<WebViewDemo> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.google.com',
      appBar: AppBar(
        title: const Text('WebView Demo'),
      ),
      withZoom: true,
      withLocalStorage: true,
      withJavascript: true,
      hidden: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Waiting.....'),
        ),
      ),
    );
  }
}
