import 'package:quick_mart/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagepath;
  final String title;
  final String subtitle;

  OnBoardingModel({
    required this.imagepath,
    required this.title,
    required this.subtitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagepath: Assets.imagesOnBoarding1,
    title: 'Explore a wide range of products',
    subtitle:
        'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
  ),
  OnBoardingModel(
    imagepath: Assets.imagesOnBoarding2,
    title: 'Unlock exclusive offers and discounts',
    subtitle:
        'Get access to limited-time deals and special promotions available only to our valued customers.',
  ),
  OnBoardingModel(
    imagepath: Assets.imagesOnBoarding3,
    title: 'Safe and secure         payments',
    subtitle:
        ' QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
  ),
];
