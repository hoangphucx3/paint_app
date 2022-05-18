import 'package:flutter/material.dart';

import '../../components/circle_bg_icon.dart';
import '../../components/round_search_field.dart';
import '../../size_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenHeight(46),
            child: Image.asset('assets/icons/logo.png')),
        const RoundSearchField(),
        const CircleBGIcon(icon: Icons.notifications_none),
        const CircleBGIcon(icon: Icons.shopping_cart_outlined),
      ],
    );
  }
}