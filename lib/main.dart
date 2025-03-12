import 'package:flutter/material.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/functions/check_current_user_state.dart';
import 'package:quick_mart/core/routes/app_router.dart';
import 'package:quick_mart/core/services/server_locator.dart';
import 'package:quick_mart/core/utils/app_strings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppStrings.supaBaseURL,
    anonKey: AppStrings.supaBaseAPIKEY,
  );
  checkCurrentUserState();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const QuickMart());
}

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
