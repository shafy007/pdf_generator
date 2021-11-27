import 'package:flutter/material.dart';
import 'package:myflutterapp/screen/pdf_generator.dart';

void main() {
  runApp(CreatePdfWidget());
}

class CreatePdfWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CreatePdfStatefulWidget(),
    );
  }
}
