import 'package:flutter/material.dart';
import 'package:media_player_example/provider/slider_provider.dart';
import 'package:media_player_example/screens/Parallax%20Effect%20in%20Flutter/effect_screen.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EffectScreen(),
    );
  }
}
