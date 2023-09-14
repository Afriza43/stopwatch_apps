import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  int jumlah = 0;
  int harga = 25000;
  int totalHarga = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Signed In as : ${user.email}",
          //   style: TextStyle(
          //     fontSize: 20,
          //   ),
          // ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            // color: Colors.blue,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  // color: Colors.blue,

                  width: 100,
                  // height: 50,
                  child: Image.asset('assets/melon_1.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    // height: 50,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apel",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Tanpa pestisida berbahaya",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          "Rp 25.000",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(8.0))),
                          child: IconButton(
                              color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  jumlah++;
                                  totalHarga = jumlah * harga;
                                });
                              },
                              icon: Icon(Icons.add)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Center(
                              child: Text(
                            "${jumlah}",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(8.0))),
                          child: IconButton(
                              color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  jumlah--;
                                  totalHarga = jumlah * harga;
                                });
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),

          SizedBox(height: 20.0), //Ini container output
          Container(
            padding: EdgeInsets.all(16.0),
            //color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Pembayaran',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jumlah Produk ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        " ${jumlah}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Harga ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        " ${totalHarga}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
        ],
      )),
      //floating
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        child: Icon(Icons.logout),
        backgroundColor:
            Colors.red, // Atur warna latar belakang sesuai kebutuhan
      ),
    );
  }
}
