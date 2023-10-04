import 'package:cobalogin/pages/tourism_place.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Destinasi Favorit'),
        backgroundColor: Colors.indigo[900],
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (BuildContext context, int index) {
          final TourismPlace place = tourismPlaceList[index];
          return place.isFavorite
              ? Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          width:
                              80, // Sesuaikan dengan ukuran yang Anda inginkan
                          height:
                              80, // Sesuaikan dengan ukuran yang Anda inginkan
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Mengatur bentuk menjadi lingkaran
                            image: DecorationImage(
                              image: NetworkImage(place.imageUrls[0]),
                              fit: BoxFit
                                  .cover, // Atur bagaimana gambar akan diatur dalam lingkaran
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900],
                              ),
                            ),
                            Text(
                              place.location,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox();
        },
      ),
    );
  }
}
