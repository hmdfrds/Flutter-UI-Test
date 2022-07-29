import 'package:flutter/material.dart';
import 'package:flutter_ui_test/weather_app/weather_app_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const WeaterAppMain();
  }
}
