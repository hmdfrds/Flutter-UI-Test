import 'package:flutter/material.dart';
import 'package:flutter_ui_test/weather_app/widget/custom_today_weather_card_first_row.dart';
import 'package:flutter_ui_test/weather_app/widget/status_list.dart';

class CustomTodayWeatherCard extends StatelessWidget {
  const CustomTodayWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xff244242),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Expanded(flex: 4, child: CustomTodayWeatherCardFirstRow()),
          const SizedBox(height: 10),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color(0xff1b3033),
                  borderRadius: BorderRadius.circular(20)),
              child: const StatusList(),
            ),
          ),
        ],
      ),
    );
  }
}
