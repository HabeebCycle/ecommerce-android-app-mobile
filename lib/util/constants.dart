import "package:flutter/material.dart";

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 200);

// Routes
const String SPLASH_ROUTE = "/splash";
const String LOGIN_ROUTE = "/login";
const String FORGOT_PASSWORD_ROUTE = "/forgot_password";
const String LOGIN_SUCCESS_ROUTE = "/login_success";

// Form errors
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Email address is required";
const String kInvalidEmailError = "Email address is not valid";
const String kPassNullError = "Password field is empty";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";