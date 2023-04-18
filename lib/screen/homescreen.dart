import 'package:flutter/material.dart';
import 'package:flutter_pdfviewer_controller/screen/pdfview.dart';
import 'package:get/get.dart';

import '../controller/viewercontroller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter PDF Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Controller.to.createPdfController();
                    Get.to(() => PdfViewer());
                  },
                  child: Text('loadFile'),
                ),
              ),
            ],
          ),
        ));
  }
}
