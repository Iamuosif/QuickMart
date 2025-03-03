import 'package:flutter/material.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:quick_mart/core/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context, '/onBoarding');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(Assets.logo, width: 263, height: 76)),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
