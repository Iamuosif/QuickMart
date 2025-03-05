import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:quick_mart/core/utils/app_strings.dart';
import 'package:quick_mart/core/widget/custom_button.dart';
import 'package:quick_mart/core/widget/custom_toast.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_state.dart';
import 'package:quick_mart/features/auth/presentation/widget/custom_text_form_field.dart';
import 'package:quick_mart/features/auth/presentation/widget/password_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSccuessState) {
          showToast(msg: "Account Created Successfully");
          customReplacementNavigate(context, '/signIn');
        } else if (state is SignUpFailureState) {
          showToast(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                text: 'Full Name',
                labelText: 'Enter your full name',
                onChanged: (fullName) {
                  authCubit.fullName = fullName;
                },
              ),
              CustomTextFormField(
                text: 'Email',
                labelText: 'Enter your email',
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              PasswordTextFormField(
                text: 'Password',
                labelText: 'Enter your password',
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              SizedBox(height: 50),
              CustomBtn(
                text: AppStrings.createacc,
                onPressed: () async {
                  if (authCubit.signUpFormKey.currentState!.validate()) {
                    await authCubit.signUpWithEmailAndPassword();
                  }
                },
                width: double.infinity,
              ),
            ],
          ),
        );
      },
    );
  }
}
