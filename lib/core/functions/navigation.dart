import 'package:go_router/go_router.dart';

void customReplacementNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}

void customNavigate(context, String path) {
  GoRouter.of(context).push(path);
}
