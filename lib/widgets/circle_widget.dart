// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';

class Circle extends StatefulWidget {
  double? radius;

  String images;

  Circle({
    Key? key,
    required this.radius,
    required this.images,
  }) : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radius,
      backgroundImage: AssetImage(widget.images),
    );
  }
}
