import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/size_config.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key, required this.icon, required this.action,
  }) : super(key: key);

  final String icon;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {action();},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(10)),
        padding: EdgeInsets.all(getProportionScreenWidth(10)),
        height: getProportionScreenHeight(40),
        width: getProportionScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}