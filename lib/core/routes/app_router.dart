import 'package:go_router/go_router.dart';
import 'package:quick_mart/features/onBoarding/view/on_borading_view.dart';
import 'package:quick_mart/features/splash/view/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
  ],
);
