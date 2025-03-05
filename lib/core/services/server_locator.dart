import 'package:get_it/get_it.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/features/auth/presentation/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());

  // Alternatively you could write it if you don't like global variables
  //GetIt.I.registerSingleton<CacheHelper>(CacheHelper());
}
