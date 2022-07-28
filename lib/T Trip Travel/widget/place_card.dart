import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: const Color(0xfff5d9cb),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/t_trip_travel/thailand.jpg",
              height: 150.h,
              width: 120.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            "Thailand",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Color(0xffff9669),
                size: 14,
              ),
              Text(
                "Bihan",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
