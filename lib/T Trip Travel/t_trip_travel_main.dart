import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_test/T%20Trip%20Travel/landing_page.dart';
import 'package:flutter_ui_test/T%20Trip%20Travel/main_page.dart';

class TTripTravelMain extends StatelessWidget {
  const TTripTravelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4, 683.4),
      builder: (BuildContext context, Widget? child) {
        return const MaterialApp(
          home: MainPage(),
        );
      },
    );
  }
}
