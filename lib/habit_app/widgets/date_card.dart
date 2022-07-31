import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCard extends StatelessWidget {
  final DateTime date;
  final bool choosed;
  final Function(DateTime) onTap;
  const DateCard({
    Key? key,
    required this.date,
    required this.choosed,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dayNumber = DateFormat('d').format(date);
    String dayName = DateFormat('EEE').format(date);
    return GestureDetector(
      onTap: () {
        onTap(date);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5),
        color: choosed ? Colors.black : Colors.white,
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black12, width: 0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
          height: 100,
          width: 65,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(children: [
              Text(
                dayName,
                style: TextStyle(
                  color: choosed ? Colors.white54 : Colors.black26,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                dayNumber,
                style: TextStyle(
                    fontSize: 20,
                    color: choosed ? Colors.white : Colors.black45,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
