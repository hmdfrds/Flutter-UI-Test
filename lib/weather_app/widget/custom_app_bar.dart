import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: const Icon(
            CupertinoIcons.chevron_back,
            color: Colors.white,
          ),
        ),
        Row(
          children: const [
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Dhaka",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
