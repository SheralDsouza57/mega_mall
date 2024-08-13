import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/bounce_effect.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BounceEffect(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(4.r),
          ),
        ),
        width: 210.w,
        child: Center(
          child: TextWidget(
            text: 'Buy Now',
            fontFamily: AppFonts.inter,
            color: AppColors.white,
            fontsize: 16.h,
            fontweight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
