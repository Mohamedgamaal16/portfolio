import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      Container(
        color: Colors.amber,
        height: 600,
      ),
      Container(
        color: Colors.black,
        height: 600,
      ),
      Container(
        color: Colors.red,
        height: 600,
      ),
      Container(
        color: Colors.green,
        height: 600,
      ),
      Container(
        color: Colors.blue,
        height: 600,
      )
    ];
  }
}
