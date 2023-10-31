import 'package:flutter/material.dart';
import 'package:rwku/source/navController.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AdministrasiScreen extends StatefulWidget {
  const AdministrasiScreen({super.key});

  @override
  State<AdministrasiScreen> createState() => _AdministrasiScreenState();
}

class _AdministrasiScreenState extends State<AdministrasiScreen> {
  var loadingPercentage = 0;
  late final WebViewController? controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://surat.rw-ku.com/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(   bottomNavigationBar: NavigationControls(controller: controller!),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 45,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 19,
            )),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            WebViewWidget(controller: controller!),
            if (loadingPercentage > 0)
              LinearProgressIndicator(
                value: loadingPercentage / 100,
              )
          ],
        ),
      ),
    );
  }
}
