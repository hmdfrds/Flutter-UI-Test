import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String statusName;
  final String status;
  const StatusCard({
    Key? key,
    required this.statusName,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff224241),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          statusName == "Rain"
              ? Image.asset(
                  "assets/weather_app/small_rainy_cloudy.png",
                  width: 65,
                )
              : statusName == "Wind"
                  ? Image.asset(
                      "assets/weather_app/wind.png",
                      width: 65,
                    )
                  : Image.asset(
                      "assets/weather_app/humidity.png",
                      width: 65,
                    ),
          Column(
            children: [
              Text(
                status,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(height: 5),
              Text(
                statusName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
