import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_1/biodata.dart';
import 'package:flutter_note/pertemuan_2/layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          // pertemua_1
          // body: BiodataKu(),
          // pertemua_2
          body: LayoutingSpace()),
    );
  }
}
