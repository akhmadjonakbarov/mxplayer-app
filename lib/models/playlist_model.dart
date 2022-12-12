// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:mxplayer/models/song_model.dart';

class Playlist {
  String title;
  List<Song> songs;
  String imageUrl;
  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  Playlist copyWith({
    String? title,
    List<Song>? songs,
    String? imageUrl,
  }) {
    return Playlist(
      title: title ?? this.title,
      songs: songs ?? this.songs,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'songs': songs.map((x) => x.toMap()).toList(),
      'imageUrl': imageUrl,
    };
  }

  factory Playlist.fromMap(Map<String, dynamic> map) {
    return Playlist(
      title: map['title'] as String,
      songs: List<Song>.from(
        (map['songs'] as List<int>).map<Song>(
          (x) => Song.fromMap(x as Map<String, dynamic>),
        ),
      ),
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Playlist.fromJson(String source) =>
      Playlist.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Playlist(title: $title, songs: $songs, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant Playlist other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        listEquals(other.songs, songs) &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => title.hashCode ^ songs.hashCode ^ imageUrl.hashCode;
}
