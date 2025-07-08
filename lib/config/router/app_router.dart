import 'package:bussels/config/router/routes/onboarding_routes.dart';
import 'package:go_router/go_router.dart';

import 'enum/app_routes_enum.dart';
import 'routes/auth_routes.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutesEnum.splash.path,
    routes: [...authRoutes, ...onboardingRoutes, ...authRoutes],
  );
}
