import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/add_to_cart_button.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.productName,
    required this.productPrice,
  });
  final String product;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 195.h,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 4),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            product,
            width: 170.w,
            height: 81.h,
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            child: TextWidget(
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
          const AddToCartButton(),
          SizedBox(height: 13.h),
        ],
      ),
    );
  }
}
