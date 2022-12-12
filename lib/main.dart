import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxplayer/providers/songs_provider.dart';
import 'package:mxplayer/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SongsProvider(),
        )
      ],
      child: GetMaterialApp(
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
      ),
    );
  }
}
