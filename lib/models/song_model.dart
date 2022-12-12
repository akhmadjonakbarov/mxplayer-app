// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Song {
  String title;
  String description;
  String url;
  String coverUrl;
  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  Song copyWith({
    String? title,
    String? description,
    String? url,
    String? coverUrl,
  }) {
    return Song(
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      coverUrl: coverUrl ?? this.coverUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'url': url,
      'coverUrl': coverUrl,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      title: map['title'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      coverUrl: map['coverUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Song.fromJson(String source) =>
      Song.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Song(title: $title, description: $description, url: $url, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(covariant Song other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.description == description &&
        other.url == url &&
        other.coverUrl == coverUrl;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        url.hashCode ^
        coverUrl.hashCode;
  }

  static const assetsMusic = "assets/music";
  static const assetImage = "assets/image";
  static List<Song> songs = [
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
}
