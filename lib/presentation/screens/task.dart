import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/Resources/app_colors.dart';
import 'package:mega_mall/Resources/app_fonts.dart';
import 'package:mega_mall/Resources/app_images.dart';
import 'package:mega_mall/data/datasources/task_data.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.lightGrey,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.arrow_back),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.oliveGreen),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Image.asset(
                    AppImages.logo,
                    width: 45.w,
                    height: 45.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Magnolia Bakery',
                      fontFamily: AppFonts.dmSans,
                      fontsize: 14.h,
                      fontweight: FontWeight.w600,
                    ),
                    TextWidget(
                      text: '3% cashback . Rs.250 Welcome Bonus',
                      fontFamily: AppFonts.dmSans,
                      fontsize: 10.h,
                      fontweight: FontWeight.w600,
                      color: AppColors.lightGrey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            TextWidget(
              text: 'Claim Deals',
              fontFamily: AppFonts.dmSans,
              fontsize: 16.h,
              fontweight: FontWeight.w800,
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 400.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.w,
                  crossAxisSpacing: 10.h,
                  childAspectRatio: 130.w / 160.h,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return TaskCard(
                    color: taskData.color[index],
                    image: taskData.image[index],
                    text1: taskData.text1[index],
                    text2: taskData.text2[index],
                    buttonName: taskData.buttonName[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

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

class ProductTaskCard extends StatelessWidget {
  const ProductTaskCard({
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
          borderRadius: BorderRadius.circular(20.r), color: AppColors.white),
      width: 110.w,
      height: 35.h,
      child: Center(
        child: TextWidget(
          text: 'Pay Bill',
          fontFamily: AppFonts.dmSans,
          fontsize: 12.h,
          fontweight: FontWeight.w700,
        ),
      ),
    );
  }
}
