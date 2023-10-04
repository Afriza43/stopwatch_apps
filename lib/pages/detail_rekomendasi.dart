import 'package:cobalogin/pages/tourism_place.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatefulWidget {
  const HalamanDetail({super.key, required this.tempat});
  final TourismPlace tempat;

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo[900],
      ),
      backgroundColor: Colors.grey[350],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[900],
        onPressed: () {
          _launchUrl(widget.tempat.imageUrls[0]);
        },
        child: Icon(
          Icons.travel_explore_outlined,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.tempat.imageUrls.length,
                    itemBuilder: (context, index) {
                      return Image.network(widget.tempat.imageUrls[index]);
                    })),
            SizedBox(
              height: 8,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.tempat.name} - ${widget.tempat.location}",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          widget.tempat.ticketPrice,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Text(
                          " - Ticket price",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(widget.tempat.openDays),
                            Text(
                              " (${widget.tempat.openTime})",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                String text = "";
                                setState(() {
                                  // isFavorite = !isFavorite;
                                  widget.tempat.isFavorite =
                                      !widget.tempat.isFavorite;
                                });
                                if (widget.tempat.isFavorite == true) {
                                  text = "Berhasil menambahkan ke favorite";
                                } else {
                                  text = "Berhasil menghapus ke favorite";
                                }

                                SnackBar snackBar = SnackBar(
                                  content: Text(text),
                                  backgroundColor: (widget.tempat.isFavorite)
                                      ? Colors.green
                                      : Colors.red,
                                );

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              icon: widget.tempat.isFavorite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.pinkAccent[400],
                                    )
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share_outlined,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.tempat.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception("Gagal membuka url : ${_url}");
    }
  }
}
