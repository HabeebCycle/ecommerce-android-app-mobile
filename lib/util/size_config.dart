import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    screenHeight = mediaQueryData.size.height;
    screenWidth = mediaQueryData.size.width;
    orientation = mediaQueryData.orientation;
  }
}

// Get the proportion height as per the screen size
double getProportionScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that we are going to use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportion width as per the screen size
double getProportionScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is th layout that will be used
  return (inputWidth / 375.0) * screenWidth;
}