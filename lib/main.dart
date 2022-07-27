import 'package:flutter/material.dart';
import 'package:flutter_ui_test/T%20Trip%20Travel/t_trip_travel_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TTripTravelMain();
  }
}
