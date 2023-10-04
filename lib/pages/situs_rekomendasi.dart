import 'package:cobalogin/pages/detail_rekomendasi.dart';
import 'package:cobalogin/pages/tourism_place.dart';
import 'package:flutter/material.dart';

class SitusRekomendasiPage extends StatelessWidget {
  const SitusRekomendasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        )),
        backgroundColor: Colors.indigo[900],
        title: Center(
          child: Text(
            "Rekomendasi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.amber[300],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.indigo[900],
      body: ListView.builder(
          itemCount: tourismPlaceList.length,
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanDetail(tempat: place);
                }));
              },
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(place.imageUrls[0], width: 460),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                place.name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz_outlined)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.blue,
                              ),
                              Text(
                                place.location,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${place.openDays} (${place.openTime})",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Click image for more detail",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
