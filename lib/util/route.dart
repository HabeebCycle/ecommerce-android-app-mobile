import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

// Using named routes
final Map<String, WidgetBuilder> routes = {
  SPLASH_ROUTE: (context) => const SplashScreen(),
  LOGIN_ROUTE: (context) => const LoginScreen(),
  FORGOT_PASSWORD_ROUTE: (context) => const ForgotPasswordScreen(),
  LOGIN_SUCCESS_ROUTE: (context) => const LoginSuccessScreen(),
};