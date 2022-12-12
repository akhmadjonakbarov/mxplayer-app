import 'package:flutter/cupertino.dart';

import '../models/models.dart';

class SongsProvider with ChangeNotifier {
  static const assetsMusic = "assets/music";
  static const assetImage = "assets/image";
  List<Song> _songs = [
    Song(
      title: "Gone Gone",
      description: "Gone",
      url: "$assetsMusic/gone.m4a",
      coverUrl: "$assetImage/gone.jpg",
    ),
    Song(
      title: "Alaqa Aala",
      description: "Alaqa Aala",
      url: "$assetsMusic/alaqa.mp3",
      coverUrl: "$assetImage/alaqa.jpg",
    )
  ];

  List<Song> get songs {
    return [..._songs];
  }
}
