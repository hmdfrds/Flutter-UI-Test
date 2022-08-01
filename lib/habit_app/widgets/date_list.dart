import 'package:flutter/material.dart';
import 'package:flutter_ui_test/habit_app/widgets/date_card.dart';

class DateList extends StatefulWidget {
  final ScrollController scrollController;
  final List thisMonthDates;
  final Function(DateTime) onDateChanged;

  const DateList(
      {Key? key,
      required this.scrollController,
      required this.thisMonthDates,
      required this.onDateChanged})
      : super(key: key);

  @override
  State<DateList> createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  int choosenDate = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102,
      child: ListView.separated(
        controller: widget.scrollController,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.thisMonthDates.length + 2,
        itemBuilder: (context, index) {
          if (index == 0 || index == widget.thisMonthDates.length + 1) {
            return const SizedBox(width: 10);
          }
          return DateCard(
            onTap: (p0) {
    
              widget.onDateChanged(p0);
              setState(() {
                choosenDate = p0.day;
              });
              if (choosenDate > 1 &&
                  choosenDate < widget.thisMonthDates.length) {
                widget.scrollController.animateTo(
                    (85 * (choosenDate - 1) - 143).toDouble(),
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear);
              }
            },
            date: widget.thisMonthDates[index - 1],
            choosed: choosenDate == index,
          );
        },
        separatorBuilder: ((context, index) {
          return const SizedBox(width: 20);
        }),
      ),
    );
  }
}
