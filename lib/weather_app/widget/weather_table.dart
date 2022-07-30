import 'package:flutter/material.dart';

class WeatherTable extends StatelessWidget {
 final  List<Map<String, String>> weatherData;
  const WeatherTable({Key? key, required this.weatherData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var rowHeight = constraints.maxHeight / 7;
      return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        textBaseline: TextBaseline.alphabetic,
        children: [
          ...weatherData.map((e) {
            return TableRow(
              children: [
                SizedBox(
                  height: rowHeight,
                  child: Text(
                    e["day"].toString(),
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/weather_app/small_${e['icon']}.png",
                      width: 35,
                      height: 35,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      e["status"].toString(),
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      e["temperature"].toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " ${e['plusTemperature']}",
                      style:
                          const TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                  ],
                )
              ],
            );
          })
        ],
      );
    });
  }
}
