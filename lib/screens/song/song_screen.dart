import 'package:flutter/material.dart';
import 'package:mxplayer/models/models.dart';
import 'package:mxplayer/providers/songs_provider.dart';
import 'package:provider/provider.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  static const routeName = '/song-screen';

  @override
  Widget build(BuildContext context) {
    Song song = Provider.of<SongsProvider>(context).songs[0];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: []),
    );
  }
}
