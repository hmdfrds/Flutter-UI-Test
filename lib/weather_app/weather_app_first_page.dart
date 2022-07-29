import 'package:flutter/material.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_app_bar.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_bottom_app_bar.dart';
import 'package:flutter_ui_test/weather_app/widget/days_bar.dart';
import 'package:flutter_ui_test/weather_app/widget/status_list.dart';
import 'package:flutter_ui_test/weather_app/widget/today_weather_status.dart';

class WeatherAppFirstPage extends StatelessWidget {
  const WeatherAppFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1b3033),
        bottomNavigationBar: const CustomBottomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: const [
              CustomAppBar(),
              TodayWeatherCard(
                date: "Today,16 March",
                temperature: "30",
                status: "sunny",
              ),
              DaysBar(),
              SizedBox(height: 15),
              StatusList()
            ],
          ),
        ),
      ),
    );
  }
}
