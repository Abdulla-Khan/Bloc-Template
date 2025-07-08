enum AppRoutesEnum { splash, onboarding, login, signup }

extension AppRoutesExtension on AppRoutesEnum {
  String get path {
    switch (this) {
      case AppRoutesEnum.splash:
        return '/splash';
      case AppRoutesEnum.onboarding:
        return '/onboarding';
      case AppRoutesEnum.login:
        return '/login';
      case AppRoutesEnum.signup:
        return '/signup';
    }
  }

  String get name => toString().split('.').last;
}
