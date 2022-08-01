import 'package:flutter/material.dart';

class AddHabitButton extends StatelessWidget {
  final Function addHabit;
  const AddHabitButton({
    Key? key,
    required this.addHabit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addHabit();
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xfff4f6f6),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add),
            Text(
              "Add more",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
