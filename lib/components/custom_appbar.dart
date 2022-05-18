import 'package:app_ban_son/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.height, required this.child})
      : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: getProportionateScreenHeight(160),
          child: child,
          decoration: const BoxDecoration(
            gradient: mPrimaryGradientColor,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: height),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF1F0F5),
            borderRadius: BorderRadius.vertical(top: Radius.circular(15),),
          ),
        ),
      ],
    );
  }
}