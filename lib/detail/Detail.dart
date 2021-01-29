import 'package:flutter/material.dart';

// Import models
import 'package:uasmobile_flutter/models/AnimeManga.dart';

class DetailScreen extends StatelessWidget {
  final Anime anime;

  DetailScreen({Key key, @required this.anime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Bagian judul
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                anime.titles,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                        ),
                        Text(anime.averageRating),
                      ],
                    ),
                  ),
                  Text(
                    "Date Release : " + anime.startDate,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Text(
                    "Status : " + anime.status,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    // Bagian deskripsi
    Widget bagianDeskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Synopsis :"),
            Text(
              anime.sinopsis,
              style: Theme.of(context).textTheme.bodyText1,
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(anime.titles),
      ),
      body: ListView(
        children: [
          Image.network(
            anime.poster,
            // width: 400,
            // fit: BoxFit.cover,
            height: 400,

            fit: BoxFit.fitWidth,
          ),
          bagianJudul,
          bagianDeskripsi,
        ],
      ),
    );
  }
}
