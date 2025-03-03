import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.color,
    required this.text,
    required this.onPressed,
    required this.width,
    this.textColor,
  });
  final Color? color;
  final Color? textColor;
  final String text;
  final VoidCallback onPressed;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}
