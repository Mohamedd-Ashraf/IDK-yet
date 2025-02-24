import 'package:flutter/material.dart';
import 'package:flutter_application_3/Core/Routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/Routes/routes.dart';
import 'Core/Themes/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        initialRoute: Routes.onBoarding,
        theme: ThemeData(
          primaryColor: ColorManager.primaryColor,
          scaffoldBackgroundColor: ColorManager.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
