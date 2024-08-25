import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/features/home/Peresention/view/first_section.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
     Flexible(child: const FirstSectionView()),
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
