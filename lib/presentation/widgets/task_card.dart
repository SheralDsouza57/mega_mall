import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/Resources/app_colors.dart';
import 'package:mega_mall/Resources/app_fonts.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.color,
    required this.image,
    required this.text1,
    required this.text2,
    required this.buttonName,
  });
  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      height: 160.h,
      width: 130.w,
      child: Column(
        children: [
          Image.asset(
            image,
            width: 50.w,
            height: 50.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          TextWidget(
            text: text1,
            fontFamily: AppFonts.dmSans,
            fontsize: 14.h,
            fontweight: FontWeight.w400,
          ),
          TextWidget(
            text: text2,
            fontFamily: AppFonts.dmSans,
            fontsize: 14.h,
            fontweight: FontWeight.w700,
          ),
          TextWidget(
            text: '---------------',
            fontFamily: AppFonts.dmSans,
            fontsize: 14.h,
            color: AppColors.lightGrey,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.white),
            width: 110.w,
            height: 35.h,
            child: Center(
              child: TextWidget(
                text: buttonName,
                fontFamily: AppFonts.dmSans,
                fontsize: 12.h,
                fontweight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
