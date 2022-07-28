import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_test/T%20Trip%20Travel/widget/place_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int chooseFilter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Image.asset(
                        "assets/profile_pic.jpg",
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: const Color(0xfffcd9c6),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.dashboard_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.r),
                            ),
                          ),
                          prefixIcon: const Icon(CupertinoIcons.search),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20.w),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffff9669),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: IconButton(
                        icon: const Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Travel Place",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.sp),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style:
                            TextStyle(color: Color(0xffff9669), fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                chooseFilter = 0;
                              });
                            },
                            child: Column(
                              children: [
                                AnimatedContainer(
                                  width: chooseFilter == 0 ? 10.w : 0,
                                  height: 3.h,
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200.r),
                                    color: const Color(0xffff9669),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "All",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: chooseFilter == 0
                                        ? const Color(0xffff9669)
                                        : Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                chooseFilter = 1;
                              });
                            },
                            child: Column(
                              children: [
                                AnimatedContainer(
                                  width: chooseFilter == 1 ? 45.w : 0,
                                  height: 3.h,
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200.r),
                                    color: const Color(0xffff9669),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Advancer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: chooseFilter == 1
                                        ? const Color(0xffff9669)
                                        : Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                chooseFilter = 2;
                              });
                            },
                            child: Column(
                              children: [
                                AnimatedContainer(
                                  width: chooseFilter == 2 ? 35 : 0,
                                  height: 3,
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200.r),
                                    color: const Color(0xffff9669),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Popular",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: chooseFilter == 2
                                        ? const Color(0xffff9669)
                                        : Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: SizedBox(
                        width: 100.w,
                        height: 208.h,
                        child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (content, index) {
                              return PlaceCard();
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 10.w,
                              );
                            },
                            itemCount: 4),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
