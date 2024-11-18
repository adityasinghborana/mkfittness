import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';

class route {
  static void goTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void remove(
    BuildContext context,
  ) {
    Navigator.of(context).pop();
  }
}


Future<String> loadPdfFromAssets(String assetPath) async {
  try {
    // Load the PDF from assets
    final byteData = await rootBundle.load(assetPath);

    // Get the temporary directory
    final directory = await getTemporaryDirectory();

    // Save the file to the temporary directory
    final file = File('${directory.path}/workout1.pdf');
    await file.writeAsBytes(byteData.buffer.asUint8List());

    // Return the file path
    return file.path;
  } catch (e) {
    print("Error loading PDF: $e");
    return "";
  }
}