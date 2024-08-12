import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/data/datasources/home_data.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';
import 'package:mega_mall/resources/app_icons.dart';
import 'package:mega_mall/resources/app_images.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _banners = [
    Image.asset(AppImages.banner1),
    Image.asset(AppImages.banner2),
    Image.asset(AppImages.banner3),
    Image.asset(AppImages.banner4),
    Image.asset(AppImages.banner5),
  ];
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
                hintStyle: const TextStyle(
                    color: AppColors.lightGrey,
                    fontFamily: AppFonts.dmSans,
                    fontSize: 14),
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
            SizedBox(height: 30.h),
            CarouselSlider(
              items: [
                for (int i = 0; i < homeData.banners.length; i++)
                  Image.asset(homeData.banners[i]),
              ],
              options: CarouselOptions(
                height: 150.h,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(seconds: 3),
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: false,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
