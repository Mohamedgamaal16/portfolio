import 'package:flutter/material.dart';

abstract class ScreenSize {
  static screeenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
   static screeenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}