import 'package:go_router/go_router.dart';
import 'package:shining_movie/src/core/routes/app_routes.dart';
import 'package:shining_movie/src/feature/presentation/pages/main_page/main_page.dart';

abstract class AppPages {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: AppRoutes.mainPage,
      builder: (context, state) => const MainPage(),
    ),
  ]);
}
