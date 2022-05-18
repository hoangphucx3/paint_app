import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class GradientBGButton extends StatelessWidget {
  const GradientBGButton({
    Key? key,
    required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: getProportionateScreenHeight(70),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          gradient: mPrimaryGradientColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurStyle: BlurStyle.inner,
                blurRadius: 10,
                offset: const Offset(0, 3),
                spreadRadius: 3),
          ],
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}