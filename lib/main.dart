import 'package:flutter/material.dart';

import 'util/constants.dart';
import 'util/route.dart';
import 'util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme(),
      // home: const SplashScreen(),
      routes: routes,
      initialRoute: SPLASH_ROUTE,
    );
  }
}
