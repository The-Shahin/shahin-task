import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/router/app_router.dart';
import 'package:hotel_reservation/core/shared/theme/ui_theme.dart';

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child ?? const SizedBox(),
      child: MaterialApp.router(
        title: 'Hotel Reservation',
        theme: UITheme.appTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
