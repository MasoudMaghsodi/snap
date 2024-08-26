import 'package:flutter/material.dart';
import 'package:snap/constant/theme_data.dart';
import 'package:snap/screen/map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MapScreen(),
      theme: myThemeData(),
    );
  }
}
