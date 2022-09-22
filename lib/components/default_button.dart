import 'package:flutter/material.dart';

import '../util/constants.dart';
import '../util/size_config.dart';



class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.label, required this.action,
  }) : super(key: key);

  final String label;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {action();},
        child: Text(
          label,
          style: TextStyle(
            fontSize: getProportionScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}