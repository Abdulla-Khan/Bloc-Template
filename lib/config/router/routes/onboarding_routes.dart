import 'package:bussels/features/onboarding/presentation/screens/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../enum/app_routes_enum.dart';
import 'route_helpers.dart';

final onboardingRoutes = [
  GoRoute(
    path: AppRoutesEnum.splash.path,
    name: AppRoutesEnum.splash.name,
    pageBuilder: (context, state) => buildTransitionPage(child: SplashView()),
  ),
  // GoRoute(
  //   path: AppRoutesEnum.onboarding.path,
  //   name: AppRoutesEnum.onboarding.name,
  //   pageBuilder: (context, state) =>
  //       buildTransitionPage(child: OnboardingView()),
  // ),
];
