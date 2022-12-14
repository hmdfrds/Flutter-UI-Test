import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_test/T%20Trip%20Travel/widget/custom_clipper.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var page = [
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore ",
              style: TextStyle(fontSize: 35.sp),
            ),
            Text(
              "Beauty",
              style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "of journey",
          style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: 300.w,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 18.sp),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore ",
              style: TextStyle(fontSize: 35.sp),
            ),
            Text(
              "Beauty",
              style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "of journey",
          style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: 300.w,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 18.sp),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  ];
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/t_trip_travel/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 325.h,
            child: Container(
              width: 75.w,
              height: 75.h,
              decoration: BoxDecoration(
                color: const Color(0xfff2a384),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white38),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 50.r,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40.h),
            child: ClipPath(
              clipper: ClipPathClass(),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: 700.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40.r),
                    border: Border.all(
                      color: Colors.white30,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 300.h,
                        child: PageView(
                            onPageChanged: (index) {
                              setState(() {
                                currentPage = index;
                              });
                            },
                            physics: const BouncingScrollPhysics(),
                            children: page),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: currentPage == 0 ? 30.w : 10.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r)),
                          ),
                          SizedBox(width: 5.w),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: currentPage == 1 ? 30.w : 10.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r)),
                          ),
                        ],
                      ),
                      SizedBox(height: 35.h)
                    ],
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
