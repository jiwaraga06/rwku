import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? text;
  final IconData? icon;
  const CustomContainer({super.key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(icon!),
          Text(text!),
        ],
      ),
    );
  }
}
