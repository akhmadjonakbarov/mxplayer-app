import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxplayer/screens/home/home_screen.dart';
import 'package:mxplayer/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      title: 'Material App',
      home: const HomeScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/song',
          page: () => const SongScreen(),
        ),
        GetPage(
          name: '/playlist',
          page: () => const PlaylistScreen(),
        )
      ],
    );
  }
}
