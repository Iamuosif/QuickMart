import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widget/custom_button.dart';
import 'package:quick_mart/core/widget/custom_toast.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_state.dart';
import 'package:quick_mart/features/auth/presentation/widget/custom_text_form_field.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forget Password')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: ConfirmationText()),
            const SliverToBoxAdapter(child: CustomForgotPasswordForm()),
          ],
        ),
      ),
    );
  }
}

class ConfirmationText extends StatelessWidget {
  const ConfirmationText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Confirmation Email',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Enter your email address for verification.',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is PasswordResetSuccess) {
          showToast(msg: 'Password Reset Email sent , Please check your email');
          customReplacementNavigate(context, '/signIn');
        } else if (state is PasswordResetFailure) {
          showToast(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Form(
            key: authCubit.resetPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  text: 'Email',
                  labelText: 'Enter your email',
                  onChanged: (emailadd) {
                    BlocProvider.of<AuthCubit>(context).email = emailadd;
                  },
                ),
                const SizedBox(height: 20),
                state is PasswordResetLoading
                    ? CircularProgressIndicator(color: AppColors.black)
                    : CustomBtn(
                      text: 'Send Email',
                      width: 328,
                      onPressed: () async {
                        if (authCubit.resetPasswordFormKey.currentState!
                            .validate()) {
                          await authCubit.resetPassword();
                        }
                      },
                    ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 18),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 20),
//                     Text(
//                       'Confirmation Email',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       'Enter your email address for verification.',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w200,
//                       ),
//                     ),
//                     CustomTextFormField(
//                       text: 'Email',
//                       labelText: 'Enter your email',
//                       onChanged: (email) {},
//                     ),
//                     SizedBox(height: 20),
//                     Center(
//                       child: CustomBtn(
//                         text: 'Send Email',
//                         onPressed: () {
//                           authCubit.sendPasswordResetEmail();
//                         },
//                         width: 328,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),