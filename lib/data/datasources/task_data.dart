import 'package:mega_mall/Resources/app_colors.dart';
import 'package:mega_mall/data/models/task_model.dart';
import 'package:mega_mall/resources/app_images.dart';

TaskModel taskData = TaskModel(image: [
  AppImages.payAtStore,
  AppImages.buyCoins,
  AppImages.offers,
  AppImages.storeCashback
], text1: [
  'Pay using my',
  'Buy 500',
  'Shop above Rs. 899',
  'Purchase at store'
], text2: [
  'Balance 500',
  'for just Rs. 450',
  '& get Rs. 50',
  '& get 5% back'
], buttonName: [
  'Pay Bill',
  'Get for Rs. 450',
  'Pay Bill',
  'Recharge'
], color: [
  AppColors.skyBlue,
  AppColors.babyPink,
  AppColors.beige,
  AppColors.lightBlue,
]);
