import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/add_to_cart_button.dart';
import 'package:mega_mall/presentation/widgets/bounce_effect.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  });
  final String product;
  final String productName;
  final String productPrice;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return BounceEffect(
      onTap: onTap,
      child: Container(
        width: 130.w,
        height: 195.h,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 8.0,
              )
            ]),
        child: Column(
          children: [
            Image.asset(
              product,
              width: 170.w,
              height: 81.h,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 11.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: TextWidget(
                maxlines: 1,
                text: productName,
                color: AppColors.darkGrey,
                fontsize: 12.h,
                fontweight: FontWeight.w500,
                fontFamily: AppFonts.inter,
              ),
            ),
            SizedBox(height: 4.h),
            TextWidget(
              text: productPrice,
              color: AppColors.darkGrey,
              fontsize: 14.h,
              fontweight: FontWeight.w600,
              fontFamily: AppFonts.inter,
            ),
            SizedBox(height: 11.h),
            // addToCartButton,
            SizedBox(height: 13.h),
          ],
        ),
      ),
    );
  }
}
