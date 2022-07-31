import 'package:flutter/material.dart';
import 'package:flutter_ui_test/habit_app/widgets/custom_app_bar.dart';
import 'package:flutter_ui_test/habit_app/widgets/date_list.dart';
import 'package:flutter_ui_test/habit_app/widgets/habits_list.dart';
import 'package:flutter_ui_test/habit_app/widgets/to_do_complete_tab.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final data = [
    {
      "date": DateTime(DateTime.now().year, DateTime.now().month, 31),
      "habits": [
        {
          "habitName": "Sleep",
          "time": "EveryDay",
          "streak": "4",
          "status": "todo",
        },
        {
          "habitName": "Sleep",
          "time": "EveryDay",
          "streak": "4",
          "status": "todo",
        },
        {
          "habitName": "Sleep",
          "time": "EveryDay",
          "streak": "4",
          "status": "todo",
        },
        {
          "habitName": "Sleep",
          "time": "EveryDay",
          "streak": "4",
          "status": "todo",
        },
      ]
    },
  ];
  late DateTime now;
  late List<DateTime> thisMonthDates;
  late ScrollController _scrollController;
  late DateTime choosenDate;
  late Map<String, Object> choosedDateData;
  List<Map<String, Object>> habits = [];
  late String choosenStatus;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    choosenStatus = "todo";
    now = DateTime.now();
    choosenDate = now;
    int lastDayOfMonth = DateTime(now.year, now.month + 1, 0).day;
    thisMonthDates = List.generate(lastDayOfMonth, (day) {
      return DateTime(now.year, now.month, day + 1);
    }).toList();
    getHabit();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.jumpTo(85 * (now.day - 1) - 143);
    });
  }

  getHabit() {
    var temp = data.where((element) {
      return element["date"] ==
          DateTime(choosenDate.year, choosenDate.month, choosenDate.day);
    });
    if (temp.isNotEmpty) {
      choosedDateData = temp.first;
      habits = choosedDateData["habits"] as List<Map<String, Object>>;
      habits = habits.where((element) {
        return element["status"] == choosenStatus;
      }).toList();
    } else {
      habits = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: CustomAppBar(),
              ),
              const SizedBox(height: 25),
              DateList(
                scrollController: _scrollController,
                thisMonthDates: thisMonthDates,
                onDateChanged: (p0) {
                  setState(() {
                    choosenDate = p0;
                    getHabit();
                  });
                },
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ToDoCompleteTab(
                  onTabChange: (p0) {
                    setState(
                      () {
                        if (p0 == 0) {
                          choosenStatus = "todo";
                        } else {
                          choosenStatus = "complete";
                        }
                        getHabit();
                      },
                    );
                  },
                ),
              ),
              Expanded(child: HabitList(habits: habits)),
            ],
          ),
        ),
      ),
    );
  }
}
