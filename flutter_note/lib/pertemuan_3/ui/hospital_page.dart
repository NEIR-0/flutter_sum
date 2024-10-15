import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_3/models/pasienModel.dart';
import 'package:flutter_note/pertemuan_3/ui/pasien_detail.dart';
import 'package:flutter_note/pertemuan_3/ui/pegawai_detail.dart';

class HospitalPages extends StatefulWidget {
  const HospitalPages({super.key});

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
        ),
        body: ListView(
          children: [
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text('Pasien'),
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
              child: Card(
                child: ListTile(
                  title: const Text('Pegawai'),
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
                    builder: (context) => PegawaiDetail(fetch: data),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
