import 'package:flutter/material.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_app_bar.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_bottom_app_bar.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_today_weather_card_first_row.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_today_weather_card.dart';
import 'package:flutter_ui_test/weather_app/widget/status_list.dart';
import 'package:flutter_ui_test/weather_app/widget/weather_table.dart';

class WeatherAppSecondPage extends StatelessWidget {
  const WeatherAppSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherData = [
      {
        "day": "Sun",
        "icon": "rainy",
        "status": "Rany",
        "temperature": "+19",
        "plusTemperature": "+9"
      },
      {
        "day": "Mon",
        "icon": "thunder",
        "status": "Thunder",
        "temperature": "+20",
        "plusTemperature": "+8"
      },
      {
        "day": "Tue",
        "icon": "rainy",
        "status": "Rain",
        "temperature": "+20",
        "plusTemperature": "+9"
      },
      {
        "day": "Wed",
        "icon": "rainy",
        "status": "Partly rainy",
        "temperature": "+22",
        "plusTemperature": "+8"
      },
      {
        "day": "Thu",
        "icon": "cloudy",
        "status": "Cloudy",
        "temperature": "+22",
        "plusTemperature": "+9"
      },
      {
        "day": "Fri",
        "icon": "cloudy",
        "status": "Cloudy",
        "temperature": "+22",
        "plusTemperature": "+9"
      },
      {
        "day": "Sat",
        "icon": "rainy",
        "status": "Rany",
        "temperature": "+19",
        "plusTemperature": "+9"
      },
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1b3033),
        bottomNavigationBar: const CustomBottomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 15),
              const Expanded(flex: 106, child: CustomTodayWeatherCard()),
              const SizedBox(height: 15),
              const Text(
                "Today",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
              const SizedBox(height: 15),
              Expanded(
                flex: 90,
                child: WeatherTable(weatherData: weatherData),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
