
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(Facebook());

class Facebook extends StatelessWidget {
  const Facebook({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: MyWeb(),);
  }
}


class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController() 
    ..loadRequest(Uri.parse('https://dugsiiye.com/'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('webView'),centerTitle: true,),
      body: WebViewWidget(controller: controller),
    );
  }
}
