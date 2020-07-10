import 'package:flutter/material.dart';
import 'package:poster_pixel/views/splash.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wallpaper",
      theme: ThemeData(
        primaryColor: Colors.grey[850],
      ),
      home: SplashScreen(),
    );
  }
}
