import 'package:custom_paint/presintation/emojies/bad_sticker.dart';
import 'package:custom_paint/presintation/emojies/good_sticker.dart';
import 'package:custom_paint/presintation/emojies/very_good_sticker.dart';
import 'package:flutter/material.dart';
import '../../presintation/emojies/average_sticker.dart';
import '../../presintation/flag/flag_sticker.dart';
import '../../presintation/home_page.dart';
import '../constants/constants.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case averageRouter:
        return MaterialPageRoute(builder: (_)=>AverageSticker());
      case badRouter:
        return MaterialPageRoute(builder: (_)=>BadSticker());
      case flagRouter:
        return MaterialPageRoute(builder: (_)=>FlagSticker());
      case goodRouter:
        return MaterialPageRoute(builder: (_)=>GoodSticker());
      case veryGoodRouter:
        return MaterialPageRoute(builder: (_)=>VeryGoodSticker());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}