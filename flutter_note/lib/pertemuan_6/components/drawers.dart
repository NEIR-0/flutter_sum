import 'package:flutter/material.dart';
import 'package:flutter_note/pertemuan_6/pages/beranda.dart';
import 'package:flutter_note/pertemuan_6/pages/login.dart';
import 'package:flutter_note/pertemuan_6/pages/pegawai/pegawai_page.dart';

class DrawerPages extends StatelessWidget {
  const DrawerPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.end,
                children: [
                  Text(
                    'Hospital',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Your trusted healthcare provider',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Beranda'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BerandaPages(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Pegawai'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PegawaiPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.door_back_door),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPages(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
