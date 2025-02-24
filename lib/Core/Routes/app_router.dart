import 'package:flutter/material.dart';
import 'package:flutter_application_3/Core/Routes/routes.dart';
import 'package:flutter_application_3/Features/Home/UI/Screens/login_screen.dart';

import '../../Features/Home/UI/Screens/onBoarding/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => onBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => loginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
