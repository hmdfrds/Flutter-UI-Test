import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaysBar extends StatelessWidget {
  const DaysBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Today",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Row(
          children: const [
            Text(
              "7 days",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(width: 10),
            Icon(
              CupertinoIcons.chevron_forward,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}
