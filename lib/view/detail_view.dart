import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailedViewScreen extends StatefulWidget {
  String newsUrl;
  DetailedViewScreen({super.key, required this.newsUrl});

  @override
  State<DetailedViewScreen> createState() => _DetailedViewScreenState();
}

class _DetailedViewScreenState extends State<DetailedViewScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.newsUrl = widget.newsUrl.contains('http:') ? widget.newsUrl.replaceAll('http:', 'https:') : widget.newsUrl;
    });
  }
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Byte'),
      ),
      body: WebView(
        initialUrl: widget.newsUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          setState(() {
            _controller.complete(webViewController);
          });
        },
      ),
    );
  }
}