import 'package:flutter/material.dart';

import '../../../util/constants.dart';
import '../../../util/size_config.dart';



class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "GALATEX",
          style: TextStyle(
            fontSize: getProportionScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionScreenHeight(265),
          width: getProportionScreenWidth(235),
        ),
      ],
    );
  }
}