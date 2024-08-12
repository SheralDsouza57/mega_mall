import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/Resources/app_colors.dart';
import 'package:mega_mall/Resources/app_icons.dart';
import 'package:mega_mall/Resources/app_images.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 50.w),
            TextWidget(
              text: 'Mega Mall',
              fontweight: FontWeight.bold,
              fontsize: 18.sp,
              color: AppColors.blue,
            ),
            Row(
              children: [
                Image.asset(AppIcons.notification),
                SizedBox(width: 20.w),
                Image.asset(AppIcons.cart),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.r),
        width: MediaQuery.of(context).size.width.w,
        height: MediaQuery.of(context).size.height.h,
        child: Column(
          children: [
            SizedBox(height: 25.h),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Product Name',
                hintStyle: const TextStyle(color: AppColors.lightGrey),
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.featherGrey,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
