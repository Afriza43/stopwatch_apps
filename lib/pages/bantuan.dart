import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cobalogin/pages/login.dart';

class BantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(children: [
            Text(
              'Cara Penggunaan Aplikasi',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Penggunaan Halaman Data Kelompok',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Pada halaman data kelompok, pengguna dapat melihat data kelompok yang terdiri dari 3 orang. Data kelompok yang ditampilkan adalah nama, nim, dan foto anggota kelompok.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Penggunaan Halaman Stopwatch',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Pada halaman stopwatch, pengguna dapat melihat stopwatch yang berjalan. Pengguna dapat menekan tombol start untuk memulai stopwatch, tombol stop untuk menghentikan stopwatch, dan tombol reset untuk mengembalikan stopwatch ke 0.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Penggunaan Halaman Situs Rekomendasi',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Pada Halaman Situs Rekomendasi, pengguna dapat melihat situs-situs rekomendasi yang ada di Bandung. Pengguna dapat menekan tombol love untuk menambahkan situs ke halaman favorit.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Penggunaan Halaman Data Kelompok',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Pada halaman data kelompok, pengguna dapat melihat data kelompok yang terdiri dari 3 orang. Data kelompok yang ditampilkan adalah nama, nim, dan foto anggota kelompok.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        child: Icon(Icons.logout),
        backgroundColor: Colors.indigo[900],
      ),
    );
  }
}
