import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../util/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            width: SizeConfig.screenWidth,
            //height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.06),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              label: "Back to home",
              action: (){},
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
