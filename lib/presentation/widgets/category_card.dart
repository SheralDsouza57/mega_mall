import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/bounce_effect.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.r),
      child: Column(
        children: [
          BounceEffect(
            onTap: () {},
            child: Image.asset(
              image,
              width: 48.w,
              height: 48.h,
            ),
          ),
          SizedBox(height: 8.h),
          TextWidget(
            text: title,
            color: AppColors.navyBlue,
            fontsize: 12.h,
            fontFamily: AppFonts.dmSans,
          ),
        ],
      ),
    );
  }
}
