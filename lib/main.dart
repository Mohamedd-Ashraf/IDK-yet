import 'package:flutter/material.dart';

import 'Core/DI/dependency_injection.dart';
import 'Core/Routes/app_router.dart';
import 'doctor_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
