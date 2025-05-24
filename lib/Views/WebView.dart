import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NewsWebView extends StatelessWidget {
  const NewsWebView({super.key, required this.url});
final String url;
  @override
  Widget build(BuildContext context) {
   final controller =  WebViewController()
    ..loadRequest(Uri.parse(url));
    return Scaffold(
    appBar: AppBar(title: Text("News Detail")),
    body: WebViewWidget(controller: controller),
    );
  }
}
