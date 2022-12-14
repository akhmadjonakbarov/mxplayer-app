import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxplayer/providers/providers.dart';
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
        ),
        ChangeNotifierProvider.value(
          value: PlaylistsProvider(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
        title: 'MxPlayer App',
        home: const SongScreen(),
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
