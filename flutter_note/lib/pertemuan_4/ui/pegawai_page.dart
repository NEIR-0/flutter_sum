import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_4/ui/pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Data Rumah Sakit',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          actions: [
            GestureDetector(
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16), // Optional padding
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PegawaiForm(), // Ganti dengan page tujuan
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: const [
            Card(
                child: ListTile(
              title: Text('Pegawai A'),
            )),
            Card(
                child: ListTile(
              title: Text('Pegawai B'),
            )),
            Card(
                child: ListTile(
              title: Text('Pegawai C'),
            ))
          ],
        ));
  }
}
