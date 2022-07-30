import 'package:flutter/material.dart';

class CustomTodayWeatherCardFirstRow extends StatelessWidget {
  const CustomTodayWeatherCardFirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            "assets/weather_app/big_rainy_cloudy.png",
            width: 150,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        "30",
                        style: TextStyle(
                            height: 0,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        " /20",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text("Rainy-Cloudy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
