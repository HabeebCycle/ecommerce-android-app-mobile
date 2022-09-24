import 'package:ecommerce_app/util/constants.dart';
import 'package:flutter/material.dart';

import '../../../components/route_account_text.dart';
import '../../../components/social_icon.dart';
import '../../../util/size_config.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password "
                  "\nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      icon: "assets/icons/google-icon.svg",
                      action: () {
                        print("Google");
                      },
                    ),
                    SocialIcon(
                      icon: "assets/icons/facebook-2.svg",
                      action: () {
                        print("FB");
                      },
                    ),
                    SocialIcon(
                      icon: "assets/icons/twitter.svg",
                      action: () {
                        print("Twitter");
                      },
                    ),
                  ],
                ),
                SizedBox(height: getProportionScreenHeight(20)),
                const RouteAccountText(
                  textLabel: "Don't have an account? ",
                  actionLabel: "Sign Up",
                  routeLabel: FORGOT_PASSWORD_ROUTE,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

