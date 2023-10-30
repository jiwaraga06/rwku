import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({required this.controller, super.key});

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFF3D30A2),
            Color(0XFF7743DB),
            Color(0XFF940B92),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              if (await controller.canGoBack()) {
                await controller.goBack();
              } else {
                messenger.showSnackBar(
                  const SnackBar(content: Text('No back history item')),
                );
                return;
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              if (await controller.canGoForward()) {
                await controller.goForward();
              } else {
                messenger.showSnackBar(
                  const SnackBar(content: Text('No forward history item')),
                );
                return;
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.replay, color: Colors.white),
            onPressed: () {
              controller.reload();
            },
          ),
        ],
      ),
    );
  }
}
