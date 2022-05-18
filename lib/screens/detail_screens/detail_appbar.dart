import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    Key? key,
    required this.screenName,
  }) : super(key: key);

  final String screenName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                )),
            Container(
              height: getProportionateScreenHeight(36),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              decoration: const BoxDecoration(
                  gradient: mSecondGradientColor,
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(15))),
              child: Text(
                screenName.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}