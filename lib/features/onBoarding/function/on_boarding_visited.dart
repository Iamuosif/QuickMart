import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/services/server_locator.dart';

void isonBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isonBoardingVisited', value: true);
}
