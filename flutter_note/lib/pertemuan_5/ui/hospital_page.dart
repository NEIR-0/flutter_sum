import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_5/ui/pegawai_form.dart';
import 'package:flutter_note/pertemuan_5/models/globalModel.dart';
import 'package:flutter_note/pertemuan_5/ui/pasien_detail.dart';
import 'package:flutter_note/pertemuan_5/ui/pegawai_detail.dart';

class HospitalPages extends StatefulWidget {
  final PegawaiModel data; // define
  const HospitalPages({super.key, required this.data});

  @override
  State<HospitalPages> createState() => _HospitalPagesState();
}

class _HospitalPagesState extends State<HospitalPages> {
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
                    builder: (context) => PegawaiForm(
                        data: widget.data), // Ganti dengan page tujuan
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
                  title: Text('Detail Pasien'),
                ),
              ),
              onTap: () {
                PasienModel data = PasienModel(
                  id: 120,
                  nomorRm: "27-A",
                  nama: "udin supriadi",
                  tanggalLahir: "31 Febuary 1997",
                  nomorTelepon: "0987654321",
                  alamat:
                      "jl. Kenangan indah berasamanya tapi tak kunjung datang",
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetail(fetch: data),
                  ),
                );
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text('Detail Pegawai'),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(data: widget.data),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
