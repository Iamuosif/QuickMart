import 'package:flutter/material.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/app_strings.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          AppStrings.signup,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),

        Row(
          children: [
            Text(AppStrings.haveacc, style: TextStyle(color: Colors.black38)),
            GestureDetector(
              onTap: () {
                customNavigate(context, '/signIn');
              },
              child: Text('Login', style: TextStyle(color: AppColors.cyan)),
            ),
          ],
        ),
      ],
    );
  }
}
