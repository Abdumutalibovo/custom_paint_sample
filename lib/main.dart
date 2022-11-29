import 'package:custom_paint/pages/average_sticker.dart';
import 'package:custom_paint/pages/bad_sticker.dart';
import 'package:custom_paint/pages/good_sticker.dart';
import 'package:custom_paint/pages/very_good_sticker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Paint',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: GoodSticker(),
    );
  }
}
