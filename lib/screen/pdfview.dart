import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

import '../controller/viewercontroller.dart';
import 'homescreen.dart';

class PdfViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Get.to(() => const Homescreen());
            },
          ),
        ],
      ),
      body: PdfView(
        pageBuilder: (
          Future<PdfPageImage> pageImage,
          int index,
          PdfDocument document,
        ) =>
            PhotoViewGalleryPageOptions(
                imageProvider: PdfPageImageProvider(
          pageImage,
          index,
          document.id,
        )),
        controller: Controller.to.pdfController,
      ),
    );
  }
}
