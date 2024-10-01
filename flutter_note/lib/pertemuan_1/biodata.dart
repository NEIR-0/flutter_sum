import 'package:flutter/material.dart';

class BiodataKu extends StatelessWidget {
  const BiodataKu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity, // Set the width to 200
            height: 50, // Set the height to 200
            color: Colors.red, // Set the background color to red
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Biodata',
                      style: TextStyle(
                          fontSize: 20, // Set the font size
                          fontWeight: FontWeight.bold, // Make the text bold
                          color: Colors.white),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 20),
          Container(
            width: 300, // Set the width to 200
            height: 200, // Set the height to 200
            child: Image.network(
              'https://img.freepik.com/free-photo/anime-style-mythical-dragon-creature_23-2151112866.jpg?t=st=1727359093~exp=1727362693~hmac=7181b8ef74ebddb62a8bbba2ef7db1943d8f1730082a843a886c93197f646b2a&w=2000',
              fit: BoxFit.cover, // Ensure the image covers the container
            ),
          ),
          SizedBox(height: 20),
          Text(
            'NAMA',
            style: TextStyle(
              fontSize: 20, // Set the font size
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          Text(
            "Ijlal 'Alim Rafif",
          ),
          SizedBox(height: 20),
          Text(
            'ALAMAT',
            style: TextStyle(
              fontSize: 20, // Set the font size
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          Text(
            'Jl. Kemangginsan Ilir GG.3',
          ),
          SizedBox(height: 20),
          Text(
            'HOBI',
            style: TextStyle(
              fontSize: 20, // Set the font size
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          Text(
            'Gaming',
          ),
        ],
      ),
    );
  }
}
