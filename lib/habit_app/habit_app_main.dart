import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_test/habit_app/pages/habit_app_first_page.dart';

class HabitAppMain extends StatelessWidget {
  const HabitAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4, 820.6),
      builder: ((context, child) {
        return const MaterialApp(
          home: HabitAppFirstPage(),
        );
      }),
    );
  }
}
