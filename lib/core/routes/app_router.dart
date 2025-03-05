import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:quick_mart/features/auth/presentation/view/sign_in_view.dart';
import 'package:quick_mart/features/auth/presentation/view/sign_up_view.dart';
import 'package:quick_mart/features/onBoarding/view/on_borading_view.dart';
import 'package:quick_mart/features/splash/view/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/signIn',
      builder:
          (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          ),
    ),
    GoRoute(
      path: '/signUp',
      builder:
          (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          ),
    ),
  ],
);
