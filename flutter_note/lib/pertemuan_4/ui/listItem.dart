import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
