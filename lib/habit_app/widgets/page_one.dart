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

  addHabit() {
    showBottomSheet(
      backgroundColor: const Color(0xfff9f9f9),
      context: context,
      builder: (context) => CustomBottomSheet(),
    );
  }

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
              Expanded(
                  child: HabitList(
                habits: habits,
                addHabit: addHabit,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(100)),
        ),
        const SizedBox(height: 25),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.83,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xfff1e0e1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "New Habit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                Spacer(
                  flex: 5,
                ),
                const Text(
                  "How often do you want to do it?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffe8ebea),
                      ),
                      child: const Text(
                        "Daily",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffe8ebea),
                      ),
                      child: const Text(
                        "Weekly",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
                Spacer(),
                const Text(
                  "Every",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xfff1e0e1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "1 week",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
                Spacer(),
                const Text(
                  "In which time of the day would you like to do it?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffe8ebea),
                      ),
                      child: const Text(
                        "☀️ Morning",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff19175c),
                      ),
                      child: const Text(
                        "🌙 Night",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 10,
                ),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(colors: [
                          Color(0xfffff287),
                          Color(0xfffdd5d1),
                          Color(0xfff4f6f6),
                        ])),
                    child: const Text(
                      "Create",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
