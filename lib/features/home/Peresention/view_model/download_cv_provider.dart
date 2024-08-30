import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DownloadMyCvProvider extends ChangeNotifier {
  downloadCv() async {
    final bytes =
        await rootBundle.load('assets/pdf/Mohamed Gamal Omar Sayed .pdf');
    final base64String = base64Encode(bytes.buffer.asUint8List());

    final url = 'data:application/pdf;base64,$base64String';

    final anchorElement = AnchorElement(href: url);
    anchorElement.setAttribute('download', 'Mohmaed Gamal Omar CV.pdf');
    anchorElement.click();
  }
}
