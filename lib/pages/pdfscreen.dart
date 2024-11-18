import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../helper/functions.dart';

class PDFScreen extends StatelessWidget {
  final String pdfFilePath;

  PDFScreen({required this.pdfFilePath});

  Future<String> loadPdf() async {
    // Load the PDF from assets
    return await loadPdfFromAssets(pdfFilePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF View'),
      ),
      body: FutureBuilder<String>(
        future: loadPdf(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error loading PDF"));
          } else {
            return PDFView(
              filePath: snapshot.data!,
            );
          }
        },
      ),
    );
  }
}
