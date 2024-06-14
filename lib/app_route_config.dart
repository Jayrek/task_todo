import 'package:go_router/go_router.dart';

import 'feature/sign_in/sign_in_screen.dart';
import 'feature/splash/splash_screen.dart';
import 'util/enum/app_route_enum.dart';

final class AppRouteConfig {
  static final routeConfig = GoRouter(
      // navigatorKey: _rootNavigatorKey,
      initialLocation: AppRouteEnum.splash.path,
      routes: <RouteBase>[
        GoRoute(
          name: AppRouteEnum.splash.name,
          path: AppRouteEnum.splash.path,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: AppRouteEnum.signIn.name,
          path: AppRouteEnum.signIn.path,
          builder: (context, state) => const SignInScreen(),
        )
      ]);
}
