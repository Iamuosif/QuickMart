import 'package:flutter/material.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:quick_mart/core/utils/app_assets.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/features/onBoarding/data/model/on_boarding_model.dart';
import 'package:quick_mart/features/onBoarding/widget/custom_nav_bar.dart';
import 'package:quick_mart/features/onBoarding/widget/custom_smooth_page_indicator.dart';
import 'package:quick_mart/features/onBoarding/widget/get_buttons.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  const OnBoardingBodyWidget({
    super.key,
    required this.controller,
    this.onPageChanged,
  });
  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: PageView.builder(
          onPageChanged: onPageChanged,
          controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  width: 328,
                  height: 403,
                  decoration: BoxDecoration(
                    color: AppColors.cyan_50,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            i == 0
                                ? Image.asset(
                                  Assets.logo,
                                  width: 104,
                                  height: 32,
                                )
                                : GestureDetector(
                                  onTap: () {
                                    controller.previousPage(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      curve: Curves.easeOutSine,
                                    );
                                  },
                                  child: Image.asset(
                                    Assets.arrowLeft,
                                    width: 32,
                                    height: 32,
                                  ),
                                ),
                            CustomNavBar(
                              onTap: () {
                                customReplacementNavigate(context, '/signUp');
                              },
                            ),
                          ],
                        ),
                        // : Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     horizontal: 10.0,
                        //   ),
                        //   child: CustomNavBar(
                        //     onTap: () {
                        //       customReplacementNavigate(
                        //         context,
                        //         '/signUp',
                        //       );
                        //     },
                        //   ),
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Image.asset(
                          onBoardingData[i].imagepath,
                          width: 240,
                          height: 240,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),
                Text(
                  onBoardingData[i].title,
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),

                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 16),
                Text(
                  onBoardingData[i].subtitle,
                  style: TextStyle(color: AppColors.grey_150, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                GetButtons(currentIndex: i, controller: controller),
                const SizedBox(height: 16),
                CustomSmoothPageIndicator(controller: controller),
              ],
            );
          },
        ),
      ),
    );
  }
}
