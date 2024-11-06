import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_5/models/globalModel.dart';
import 'package:flutter_note/pertemuan_5/ui/pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  final PegawaiModel? data; // define
  const PegawaiForm({super.key, this.data});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipController = TextEditingController();
  final _namaController = TextEditingController();
  final _tanggalLahirController = TextEditingController();
  final _telponController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _nipController.text = widget.data!.nip;
      _namaController.text = widget.data!.nama;
      _tanggalLahirController.text = widget.data!.tanggalLahir;
      _telponController.text = widget.data!.nomorTelepon;
      _emailController.text = widget.data!.email;
      _passwordController.text = widget.data!.password;
    }
  }

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
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5), // padding px 5
                    child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(labelText: "NIP"),
                        controller: _nipController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'NIP tidak boleh kosong';
                          }
                          if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'NIP harus berupa angka';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: "Nama"),
                        controller: _namaController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                            return 'Nama hanya boleh berisi huruf';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Tanggal Lahir"),
                        controller: _tanggalLahirController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Tanggal lahir tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Nomor Telepon"),
                        controller: _telponController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor Telepon tidak boleh kosong';
                          }
                          if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'Nomor Telepon harus berupa angka';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: "Email"),
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Format email tidak valid';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Password"),
                        controller: _passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          if (value.length <= 5) {
                            return 'Password harus lebih dari 5 karakter';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            // PRINT
                            // print('NIP: ${_nipController.text}');
                            // print('Nama: ${_namaController.text}');
                            // print('Tanggal Lahir: ${_tanggalLahirController.text}');
                            // print('Nomor Telepon: ${_telponController.text}');
                            // print('Email: ${_emailController.text}');
                            // print('Password: ${_passwordController.text}');
                            if (_formKey.currentState!.validate()) {
                              // succes validate
                              PegawaiModel data = PegawaiModel(
                                id: 1,
                                nip: _nipController.text,
                                nama: _namaController.text,
                                tanggalLahir: _tanggalLahirController.text,
                                nomorTelepon: _telponController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PegawaiDetail(data: data),
                                ),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: const Text("Submit"))
                    ])))));
  }
}
