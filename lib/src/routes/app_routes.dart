import 'package:flutter/material.dart';

import '../presentation/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/welcome';

  static Map<String, Widget Function(BuildContext)> routes = {
    "/welcome": (context) => const WelcomeScreen(),
    "/login": (context) => const LoginScreen(),
    "/register": (context) => const RegisterScreen()
  };
}
