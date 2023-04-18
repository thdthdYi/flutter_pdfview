import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:internet_file/internet_file.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  var pdfController;

  static const int initialPage = 1;

  final url = 'http://www.africau.edu/images/default/sample.pdf';

  void onInit() async {
    super.onInit();
  }

  Future<void> createPdfController() async {
    pdfController = PdfController(
      document: PdfDocument.openData(InternetFile.get(
        url,
        progress: (receivedLength, contentLength) {
          final percentage = receivedLength / contentLength * 100;
          print(
              'get progress: $receivedLength of $contentLength ($percentage%)');
        },
      )),
      initialPage: initialPage,
    );
  }
}
