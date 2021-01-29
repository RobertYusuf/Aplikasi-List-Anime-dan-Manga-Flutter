import 'package:flutter/material.dart';
import 'views/SeasonAnimePage.dart';
import 'views/TopAnimePage.dart';
import 'views/MangaPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Uas Mobile',
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.movie_filter_sharp),
                    text: 'Session Anime',
                  ),
                  Tab(
                    icon: Icon(Icons.local_fire_department),
                    text: 'Top Anime',
                  ),
                  Tab(
                    icon: Icon(Icons.book),
                    text: 'Top Mangaa',
                  ),
                ],
              ),
              title: Text('Anime List'),
            ),
            body: TabBarView(
              children: <Widget>[
                SeasonAnime(),
                TopAnimePage(),
                MangaPage(),
              ],
            ),
          ),
        ));
  }
}
