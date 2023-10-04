import 'package:cobalogin/pages//daftar_anggota.dart';
import 'package:cobalogin/pages//situs_rekomendasi.dart';
import 'package:cobalogin/pages/stopwatch.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo[900],
      //   title: Text('Halaman Utama'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15))),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://i.pinimg.com/originals/a9/4b/b0/a94bb056522bc6443ff49898b95b02c6.png",
                          width: 40,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "KiwKiw App",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      "Selamat Datang",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Membantu dalam menghitung waktu dan",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    Text("menampilkan situs rekomendasi",
                        style: TextStyle(
                          color: Colors.white54,
                        ))
                  ],
                ),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Anggota();
                    },
                  ));
                },
                child: Container(
                    padding: EdgeInsets.all(28.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_outlined,
                          color: Colors.indigo[900],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data Kelompok',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[900]),
                            ),
                            Text(
                              'List nama anggota kelompok',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return StopwatchPage();
                    },
                  ));
                },
                child: Container(
                    padding: EdgeInsets.all(28.0),
                    child: Row(
                      children: [
                        Icon(Icons.timer_outlined, color: Colors.indigo[900]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stopwatch',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[900]),
                            ),
                            Text(
                              'Menghitung waktu dengan timer',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SitusRekomendasiPage();
                    },
                  ));
                },
                child: Container(
                    padding: EdgeInsets.all(28.0),
                    child: Row(
                      children: [
                        Icon(Icons.public_outlined, color: Colors.indigo[900]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Situs Rekomendasi',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[900]),
                            ),
                            Text(
                              'Memberikan saran rekomendasi',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return StopwatchPage();
                    },
                  ));
                },
                child: Container(
                    padding: EdgeInsets.all(28.0),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border_outlined,
                            color: Colors.indigo[900]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Favorite',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[900]),
                            ),
                            Text(
                              'Menyimpan destinasi favorite anda',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
