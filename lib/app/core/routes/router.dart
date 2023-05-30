import 'package:go_router/go_router.dart';
import 'package:wally/app/features/presentation/home.screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

base class AppRoutes {
  static const home = '/';
  static const accounts = '/accounts';
  static const transactions = '/transactions';
  static const addTransaction = "add";
  static const addAccount = "add";

  generateRoutes() {
    return {
      home: (context) => const HomeScreen(),
    };
  }
}

appRoutesProvider() {
  final routes = AppRoutes();
  routes.generateRoutes();
}

@riverpod
GoRouter route(ref) {
  final router = GoRouter(
    routes: [],
  );

  return router;
}
