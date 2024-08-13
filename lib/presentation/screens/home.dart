import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_mall/data/datasources/home_data.dart';
import 'package:mega_mall/presentation/screens/detail.dart';
import 'package:mega_mall/presentation/widgets/add_to_cart_button.dart';
import 'package:mega_mall/presentation/widgets/bounce_effect.dart';
import 'package:mega_mall/presentation/widgets/category_card.dart';
import 'package:mega_mall/presentation/widgets/product_card.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_fonts.dart';
import 'package:mega_mall/resources/app_icons.dart';
import 'package:mega_mall/presentation/widgets/text_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              fontsize: 18.h,
              color: AppColors.blue,
              fontFamily: AppFonts.dmSans,
            ),
            Row(
              children: [
                InkResponse(
                  onTap: () {},
                  child: Image.asset(AppIcons.notification),
                ),
                SizedBox(width: 20.w),
                InkResponse(onTap: () {}, child: Image.asset(AppIcons.cart)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          width: MediaQuery.of(context).size.width.w,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Product Name',
                  hintStyle: const TextStyle(
                      color: AppColors.lightGrey,
                      fontFamily: AppFonts.dmSans,
                      fontSize: 14),
                  suffixIcon: BounceEffect(
                    onTap: () {},
                    child: const Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColors.featherGrey,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                ),
              ),
              SizedBox(height: 15.h),
              CarouselSlider(
                items: [
                  for (int i = 0; i < homeData.banners.length; i++)
                    Image.asset(
                      homeData.banners[i],
                      width: 315.h,
                      height: 150.h,
                    ),
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
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Categories',
                    color: AppColors.navyBlue,
                    fontsize: 16.h,
                    fontweight: FontWeight.w500,
                    fontFamily: AppFonts.dmSans,
                  ),
                  InkResponse(
                    radius: 10.r,
                    onTap: () {},
                    child: TextWidget(
                      text: 'See All',
                      color: AppColors.blue,
                      fontsize: 12.h,
                      fontweight: FontWeight.w500,
                      fontFamily: AppFonts.dmSans,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 74.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeData.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                        title: homeData.categoryHeading[index],
                        image: homeData.categories[index]);
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'New Arrivals',
                    color: AppColors.navyBlue,
                    fontsize: 16.h,
                    fontweight: FontWeight.w500,
                    fontFamily: AppFonts.dmSans,
                  ),
                  InkResponse(
                    radius: 10.r,
                    onTap: () {},
                    child: TextWidget(
                      text: 'See All',
                      color: AppColors.blue,
                      fontsize: 12.h,
                      fontweight: FontWeight.w500,
                      fontFamily: AppFonts.dmSans,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 400.h,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.w,
                    crossAxisSpacing: 10.h,
                    childAspectRatio: 130.w / 195.h,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        ProductCard(
                          product: homeData.products[index],
                          productName: homeData.productName[index],
                          productPrice: homeData.productPrice[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail(
                                        productImage: homeData.products[index],
                                        productTitle: '',
                                        productPrice: '',
                                        productRating: '',
                                        productReview: '',
                                        productDescription: '',
                                      )),
                            );
                          },
                        ),
                        Positioned(
                          bottom: 18.h,
                          left: 10.w,
                          child: AddToCartButton(
                            onTap: () {},
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
