import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_5/ui/pegawai_form.dart';
import 'package:flutter_note/pertemuan_5/models/globalModel.dart';
import 'package:flutter_note/pertemuan_5/ui/pegawai_detail.dart';

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
                        PegawaiForm(), // Ganti dengan page tujuan
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text('Budi Santoso'),
                ),
              ),
              onTap: () {
                PegawaiModel data = PegawaiModel(
                  id: 1,
                  nip: "123456789",
                  nama: "Budi Santoso",
                  tanggalLahir: "1990-01-15",
                  nomorTelepon: "081234567890",
                  email: "budi.santoso@example.com",
                  password: "password123",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                      data: data,
                    ),
                  ),
                );
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text('bambang siregar'),
                ),
              ),
              onTap: () {
                PegawaiModel data = PegawaiModel(
                  id: 2,
                  nip: "098765432",
                  nama: "bambang siregar",
                  tanggalLahir: "1995-11-12",
                  nomorTelepon: "083232323",
                  email: "bambangS@example.com",
                  password: "PasAword123",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                      data: data,
                    ),
                  ),
                );
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text('Cintia Aprilia'),
                ),
              ),
              onTap: () {
                PegawaiModel data = PegawaiModel(
                  id: 1,
                  nip: "2134567190",
                  nama: "Cintia Aprilia",
                  tanggalLahir: "2001-10-09",
                  nomorTelepon: "0809120910",
                  email: "cintia.Aprilia@example.com",
                  password: "Okay123",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(
                      data: data,
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
