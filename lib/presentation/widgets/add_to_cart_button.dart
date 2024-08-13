import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.h,
      width: 110.w,
      decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(4.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 8.0,
            ),
          ]),
      child: Center(
        child: TextWidget(
          text: 'Add to Cart',
          fontFamily: AppFonts.inter,
          fontsize: 12.h,
          color: AppColors.white,
        ),
      ),
    );
  }
}
