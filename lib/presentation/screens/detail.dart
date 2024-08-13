import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/presentation/widgets/bounce_effect.dart';
import 'package:mega_mall/presentation/widgets/buy_now_button.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';
import 'package:mega_mall/resources/app_icons.dart';

class Detail extends StatefulWidget {
  const Detail(
      {super.key,
      required this.productImage,
      required this.productTitle,
      required this.productPrice,
      required this.productRating,
      required this.productReview,
      required this.productDescription});

  final String productImage;
  final String productTitle;
  final String productPrice;
  final String productRating;
  final String productReview;
  final String productDescription;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isLikeTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          widget.productImage,
                          width: double.infinity,
                          height: 325.h,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 64.h,
                          left: 16.w,
                          child: BounceEffect(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(AppIcons.back),
                          ),
                        ),
                        Positioned(
                          top: 64.h,
                          right: 16.w,
                          child: BounceEffect(
                            onTap: () {
                              setState(() {
                                isLikeTapped = !isLikeTapped;
                              });
                            },
                            child: Image.asset(isLikeTapped
                                ? AppIcons.activeLike
                                : AppIcons.like),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 220.w,
                                child: TextWidget(
                                  maxlines: 2,
                                  text: widget.productTitle,
                                  fontFamily: AppFonts.dmSans,
                                  fontsize: 18.h,
                                  fontweight: FontWeight.w600,
                                  color: AppColors.navyBlue,
                                ),
                              ),
                              TextWidget(
                                text: widget.productPrice,
                                fontFamily: AppFonts.dmSans,
                                fontsize: 14.h,
                                fontweight: FontWeight.w600,
                                color: AppColors.blue,
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Image.asset(
                                AppIcons.rating,
                                width: 16.h,
                                height: 16.h,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 4.w),
                              TextWidget(
                                text: widget.productRating,
                                fontFamily: AppFonts.dmSans,
                                fontsize: 12.h,
                                fontweight: FontWeight.w600,
                              ),
                              SizedBox(width: 4.w),
                              BounceEffect(
                                onTap: () {},
                                child: TextWidget(
                                  text: '(${widget.productReview} Reviews)',
                                  fontFamily: AppFonts.dmSans,
                                  fontsize: 12.h,
                                  fontweight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          TextWidget(
                            text: 'Description',
                            fontFamily: AppFonts.dmSans,
                            fontsize: 16.h,
                            fontweight: FontWeight.w600,
                            color: AppColors.navyBlue,
                          ),
                          SizedBox(height: 8.h),
                          TextWidget(
                            maxlines: 20,
                            textAlign: TextAlign.justify,
                            text: widget.productDescription,
                            fontFamily: AppFonts.dmSans,
                            fontsize: 12.h,
                            fontweight: FontWeight.w600,
                            color: AppColors.timidGrey,
                          ),
                          SizedBox(height: 80.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration:
                  const BoxDecoration(color: AppColors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8.0,
                ),
              ]),
              height: 60.h,
              width: 320.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuyNowButton(
                    onTap: () {},
                  ),
                  BounceEffect(
                    onTap: () {},
                    child: Image.asset(
                      AppIcons.bag,
                      width: 90.w,
                      height: 48.h,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
