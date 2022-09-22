import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

// Using named routes
final Map<String, WidgetBuilder> routes = {
  SPLASH_ROUTE: (context) => const SplashScreen(),
};