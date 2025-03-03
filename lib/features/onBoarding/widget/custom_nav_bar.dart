import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              'Skip for now',
              style: TextStyle(color: AppColors.cyan, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
