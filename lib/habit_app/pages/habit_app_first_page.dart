
import 'package:flutter/material.dart';
import 'package:flutter_ui_test/habit_app/widgets/custom_navigation_bar.dart';
import 'package:flutter_ui_test/habit_app/widgets/page_one.dart';

class HabitAppFirstPage extends StatefulWidget {
  const HabitAppFirstPage({Key? key}) : super(key: key);

  @override
  State<HabitAppFirstPage> createState() => _HabitAppFirstPageState();
}

class _HabitAppFirstPageState extends State<HabitAppFirstPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  var pages = [
    const PageOne(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomNavigationBar(
                onChange: (index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
