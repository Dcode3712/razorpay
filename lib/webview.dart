import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class webview extends StatefulWidget {
  const webview({Key? key}) : super(key: key);

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {

  final Uri _url = Uri.parse('https://www.hotstar.com/in');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () async {

          try {
            await launchUrl(_url,mode: LaunchMode.inAppWebView);
          } catch (e) {
            print(e);
          }

        }, child: Text("Rate")),
      ),
    );
  }
}
