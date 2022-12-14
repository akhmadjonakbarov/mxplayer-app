import 'package:flutter/cupertino.dart';
import 'package:mxplayer/providers/providers.dart';

import '../models/models.dart';

class PlaylistsProvider with ChangeNotifier {
  // static const assetsMusic = "assets/music";
  // static const assetImage = "assets/image";

  List<Playlist> _playlists = [
    Playlist(
      title: "Rock & Roll",
      songs: Song.songs,
      imageUrl: "https://i.ytimg.com/vi/LhVolSBasSc/maxresdefault.jpg",
    ),
  ];
  List<Playlist> get playlists {
    return [..._playlists];
  }
}
