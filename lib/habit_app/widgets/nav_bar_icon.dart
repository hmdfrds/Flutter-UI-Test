import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  final bool selected;
  final IconData iconData;
  final int index;
  final Function(int) onchange;
  const NavBarIcon({
    Key? key,
    required this.iconData,
    required this.selected,
    required this.index,
    required this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onchange(index);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected? Colors.white:Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          iconData,
          size: 30,
        ),
      ),
    );
  }
}
