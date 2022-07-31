import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xfff4f6f6),
              borderRadius: BorderRadius.circular(15)),
          child: const Icon(
            Icons.menu,
            size: 35,
          ),
        ),
        Row(
          children: [
            const Text(
              "Saber",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff8cfefe),
                      Color(0x00ffffff),
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.face,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
