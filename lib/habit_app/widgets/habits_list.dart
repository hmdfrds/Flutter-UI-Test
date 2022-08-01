import 'package:flutter/material.dart';
import 'package:flutter_ui_test/habit_app/widgets/add_habit_button.dart';
import 'package:flutter_ui_test/habit_app/widgets/habit_card.dart';

class HabitList extends StatelessWidget {
  final Function addHabit;
  final List<Map<String, Object>> habits;
  const HabitList({Key? key, required this.habits, required this.addHabit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox(height: 10);
          }
          if (index == habits.length + 1) {
            return  Padding(
              padding:
                  const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 200),
              child: AddHabitButton(addHabit: addHabit),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: HabitCard(
              habitName: habits[index - 1]["habitName"].toString(),
              streak: habits[index - 1]["streak"].toString(),
              time: habits[index - 1]["time"].toString(),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 25);
        },
        itemCount: habits.length + 2);
  }
}
