import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/pages/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "YouTube Clone",
      home: LightMode(),
    );
  }
}



