import 'package:flutter/material.dart';
import 'package:flutter_ui_test/habit_app/widgets/nav_bar_icon.dart';

class CustomNavigationBar extends StatefulWidget {
  final Function(int) onChange;
  const CustomNavigationBar({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  List<IconData> icondatas = [
    Icons.home_outlined,
    Icons.auto_graph,
    Icons.menu,
    Icons.settings_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    int i = -1;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color(0xfffff287),
            Color(0xfffdd5d1),
            Color(0xfff4f6f6),
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...icondatas.map((e) {
            i++;
            return NavBarIcon(
              iconData: e,
              index: i,
              selected: i == selectedIndex,
              onchange: ((p0) {
                setState(() {
                  selectedIndex = p0;
                  widget.onChange(selectedIndex);
                });
              }),
            );
          }).toList(),
        ],
      ),
    );
  }
}
