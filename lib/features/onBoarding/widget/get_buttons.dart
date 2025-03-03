import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widget/custom_button.dart';
import 'package:quick_mart/features/onBoarding/data/model/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1
        ? _buildFinalButtons(context)
        : _buildNextButton();
  }

  Widget _buildFinalButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBtn(
          width: 160,
          text: 'Login',
          onPressed: () {
            // customReplacementNavigate(context, '/login');
          },
          color: AppColors.white,
          textColor: AppColors.black,
        ),
        SizedBox(
          width: 160,
          height: 56,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                Icon(Icons.arrow_forward, color: AppColors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNextButton() {
    return CustomBtn(
      width: 328,
      text: 'Next',
      onPressed: () {
        controller.nextPage(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutSine,
        );
      },
    );
  }
}
