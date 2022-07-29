import 'package:flutter/material.dart';

class TodayWeatherCard extends StatelessWidget {
  final String temperature;
  final String status;
  final String date;
  const TodayWeatherCard({
    Key? key,
    required this.temperature,
    required this.status,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff234342),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            status == "sunny"
                ? Image.asset(
                    "assets/weather_app/big_rainy_cloudy.png",
                    width: 250,
                  )
                : Image.asset(
                    "assets/weather_app/big_rainy_cloudy.png",
                    width: 250,
                  ),
            const SizedBox(height: 30),
            Text(
              date,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              temperature,
              style: const TextStyle(
                  color: Color(0xffeea268),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
