import 'package:flutter/material.dart';
// import 'package:flutter_note/pertemuan_1/biodata.dart'; // pertemuan_1
// import 'package:flutter_note/pertemuan_2/layout.dart'; // pertemuan_2
// import 'package:flutter_note/pertemuan_3/ui/hospital_page.dart'; // pertemuan_3
// import 'package:flutter_note/pertemuan_4/ui/pegawai_page.dart'; // pertemuan_4
import 'package:flutter_note/pertemuan_5/ui/pegawai_page.dart'; // pertemuan_5

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
          // body: LayoutingSpace()),
          // pertemua_3
          // body: HospitalPages()),
          // pertemua_4
          // body: PegawaiPage()),
          // pertemua_5
          body: PegawaiPage()),
    );
  }
}
