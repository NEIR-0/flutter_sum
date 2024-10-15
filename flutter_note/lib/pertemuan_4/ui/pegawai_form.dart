import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Form Pegawai',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5), // padding px 5
            child: Column(children: [
              const TextField(
                decoration: InputDecoration(labelText: "NIP"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Nama"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Tanggal Lahir"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Nomor Telepon"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Password"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ])));
  }
}

//  