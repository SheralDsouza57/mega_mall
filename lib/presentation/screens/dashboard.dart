import 'package:flutter/material.dart';
import 'package:mega_mall/resources/app_colors.dart';
import 'package:mega_mall/resources/app_icons.dart';
import 'package:mega_mall/presentation/screens/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  final List<Widget> view = [
    const Center(child: Home()),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('History')),
    const Center(child: Text('Account')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.home),
            activeIcon: Image.asset(AppIcons.activeHome),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.wishlist),
            activeIcon: Image.asset(
              AppIcons.activeWishlist,
            ),
            label: 'WISHLIST',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.history),
            activeIcon: Image.asset(AppIcons.activeHistory),
            label: 'HISTORY',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.account),
            activeIcon: Image.asset(AppIcons.activeAccount),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
