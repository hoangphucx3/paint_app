import 'package:flutter/material.dart';
import '../../size_config.dart';

class BackgroundImageWithLogo extends StatelessWidget {
  const BackgroundImageWithLogo({
    Key? key, required this.bgPath,
  }) : super(key: key);
  final String bgPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(254),
            child: Image.asset(bgPath, fit: BoxFit.fill,)),
        Container(
          margin: EdgeInsets.only(
              top: getProportionateScreenHeight(254) / 3),
          width: SizeConfig.screenWidth * 0.65,
          height: getProportionateScreenHeight(254) / 3,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Image.asset('assets/icons/logo.png'),
        ),
      ],
    );
  }
}