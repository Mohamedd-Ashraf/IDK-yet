import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Core/DI/dependency_injection.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart' show LoginCubit;
import 'package:gedeed/Features/Login/UI/Screens/login_screen.dart';

import '../../Features/Home/UI/Screens/onBoarding/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => onBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: loginScreen(),
              ),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
