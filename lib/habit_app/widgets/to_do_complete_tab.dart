import 'package:flutter/material.dart';

class ToDoCompleteTab extends StatefulWidget {
  final Function(int) onTabChange;
  const ToDoCompleteTab({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

  @override
  State<ToDoCompleteTab> createState() => _ToDoCompleteTabState();
}

class _ToDoCompleteTabState extends State<ToDoCompleteTab> {
  int chooseIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xfff4f6f6),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  chooseIndex = 0;
                  widget.onTabChange(chooseIndex);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: chooseIndex == 0 ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "To-dos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: chooseIndex == 0 ? Colors.black : Colors.black38,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  chooseIndex = 1;
                  widget.onTabChange(chooseIndex);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: chooseIndex == 1 ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Completed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: chooseIndex == 1 ? Colors.black : Colors.black38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
