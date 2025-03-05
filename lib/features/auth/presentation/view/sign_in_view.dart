import 'package:flutter/material.dart';
import 'package:quick_mart/features/auth/presentation/widget/logo.dart';
import 'package:quick_mart/features/auth/presentation/widget/sign_in_form.dart';
import 'package:quick_mart/features/auth/presentation/widget/sign_in_text.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: LogoWidget()),
            SliverToBoxAdapter(child: SignInText()),
            SliverToBoxAdapter(child: SignInForm()),
          ],
        ),
      ),
    );
  }
}
