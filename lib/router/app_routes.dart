import 'package:flutter/material.dart';
import 'package:flutter_sign/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'register';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (BuildContext context) => const LoginScreen(),
    'register': (BuildContext context) => const RegisterScreen(),
    'home': (BuildContext context) => const HomeScreen(),
  };
}
