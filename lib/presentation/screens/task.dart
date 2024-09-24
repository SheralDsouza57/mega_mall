import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/Resources/app_colors.dart';
import 'package:mega_mall/Resources/app_fonts.dart';
import 'package:mega_mall/Resources/app_images.dart';
import 'package:mega_mall/data/datasources/task_data.dart';
import 'package:mega_mall/presentation/widgets/task_card.dart';
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
