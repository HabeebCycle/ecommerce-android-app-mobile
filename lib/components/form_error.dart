import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(errors[index])),
    );
  }

  Row formErrorText(String errorText) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionScreenWidth(14),
          width: getProportionScreenWidth(14),
        ),
        SizedBox(width: getProportionScreenWidth(10)),
        Text(errorText),
      ],
    );
  }
}