import 'package:flutter/material.dart';
import 'package:quick_mart/features/auth/presentation/widget/logo.dart';
import 'package:quick_mart/features/auth/presentation/widget/sign_up_form.dart';
import 'package:quick_mart/features/auth/presentation/widget/sign_up_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: LogoWidget()),
            SliverToBoxAdapter(child: SignUpText()),
            SliverToBoxAdapter(child: SignUpForm()),
          ],
        ),
      ),
    );
  }
}
