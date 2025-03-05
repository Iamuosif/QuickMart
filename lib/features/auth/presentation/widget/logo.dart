import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 70),
        Image.asset(Assets.logo, width: 104, height: 32),
        SizedBox(height: 17),
      ],
    );
  }
}
