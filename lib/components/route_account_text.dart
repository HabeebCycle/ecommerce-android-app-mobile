import 'package:flutter/material.dart';

import '../util/constants.dart';
import '../util/size_config.dart';

class RouteAccountText extends StatelessWidget {
  const RouteAccountText({
    Key? key,
    required this.textLabel,
    required this.actionLabel,
    required this.routeLabel,
  }) : super(key: key);

  final String textLabel;
  final String actionLabel;
  final String routeLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textLabel,
          style: TextStyle(
            fontSize: getProportionScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, routeLabel),
          child: Text(
            actionLabel,
            style: TextStyle(
              fontSize: getProportionScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}