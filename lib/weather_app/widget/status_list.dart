import 'package:flutter/material.dart';
import 'package:flutter_ui_test/weather_app/widget/status_card.dart';

class StatusList extends StatelessWidget {
  const StatusList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          StatusCard(
            status: "60%",
            statusName: "Rain",
          ),
          SizedBox(width: 15),
          StatusCard(
            status: "60%",
            statusName: "Rain",
          ),
          SizedBox(width: 15),
          StatusCard(
            status: "60%",
            statusName: "Rain",
          ),
        ],
      ),
    );
  }
}
