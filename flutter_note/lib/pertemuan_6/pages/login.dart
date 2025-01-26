import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_6/models/globalModel.dart';
import 'package:flutter_note/pertemuan_6/pages/beranda.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                controller: _email,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                controller: _password,
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      LoginModel data = LoginModel(
                        email: _email.text,
                        password: _password.text,
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BerandaPages(),
                        ),
                      );
                    },
                    child: const Text("Submit"),
                  )),
            ],
          ),
        ),
      ),
    )));
  }
}
