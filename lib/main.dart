import '/config/providers/app_providers.dart';
import '/config/router/app_router.dart';
import '/config/storage/app_storage.dart';
import '/config/theme/app_theme.dart';
import '/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await SharedPrefsStorage.init();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, _) => MultiBlocProvider(
        providers: [...AppProviders.getProviders()],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppThemeData.appTheme,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
