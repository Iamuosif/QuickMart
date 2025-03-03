import 'package:flutter/material.dart';

import 'package:quick_mart/features/onBoarding/widget/on_boarding_body_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 20),

            OnBoardingBodyWidget(
              onPageChanged: (i) {
                setState(() {
                  currentPage = i;
                });
              },
              controller: controller,
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
