// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  double? height;
  double? width;
  String url;

  Circle({
    Key? key,
    this.height,
    this.width,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.blueAccent),
      height: height ?? 200,
      width: width ?? 200,
      child: Image.network(
        url,
        fit: BoxFit.fill,
      ),
    );
  }
}
