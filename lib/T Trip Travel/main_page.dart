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
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                child: Row(
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
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Row(
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
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Row(
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
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                ),
                child: Row(
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
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (content, index) {
                              if (index == 3) {
                                return SizedBox(width: 15.w);
                              }
                              return const PlaceCard();
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 20.h, bottom: 10.h),
                child: const Text(
                  "Discover",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color(0xfff4ad91),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Icon(
                            Icons.shield_sharp,
                            size: 30.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "ship",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color(0xfff4ad91),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Icon(
                            Icons.train,
                            size: 30.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Train",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color(0xfff4ad91),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Icon(
                            Icons.bus_alert,
                            size: 30.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Bus",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15.w),
                      decoration: BoxDecoration(
                        color: const Color(0xfff0cdba),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: const Icon(
                        CupertinoIcons.rocket,
                        color: Color(0xffb96e47),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xfff0cdba),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            suffixIcon: Icon(
                              CupertinoIcons.chevron_right,
                              size: 15.sp,
                              color: const Color(0xffb96e47),
                            ),
                            hintStyle: const TextStyle(
                              color: Color(0xffb96e47),
                            ),
                            hintText: "From where"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 15.h, left: 25.w, right: 25.w, bottom: 25.h),
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15.w),
                      decoration: BoxDecoration(
                        color: const Color(0xfff0cdba),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: const Icon(
                        CupertinoIcons.up_arrow,
                        color: Color(0xffb96e47),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xfff0cdba),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            suffixIcon: Icon(
                              CupertinoIcons.chevron_right,
                              size: 15.sp,
                              color: const Color(0xffb96e47),
                            ),
                            hintStyle: const TextStyle(
                              color: Color(0xffb96e47),
                            ),
                            hintText: "To"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
