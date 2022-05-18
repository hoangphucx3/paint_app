import 'package:app_ban_son/components/gradient_bg_button.dart';
import 'package:app_ban_son/models/paint_details.dart';
import 'package:app_ban_son/screens/detail_screens/detail_in_type_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_bottom_bar.dart';
import '../../models/paint_type.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';

class PaintType extends StatelessWidget {
  const PaintType({Key? key}) : super(key: key);
  static String routeName = '/pain_type_screen';

  @override
  Widget build(BuildContext context) {
    final PaintTypeIndex argument =
        ModalRoute.of(context)?.settings.arguments as PaintTypeIndex;
    final paintTypeIndex = argument.typeIndex;
    final painType = demoPaintList[paintTypeIndex];

    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
      body: Stack(
        children: [
          CustomAppBar(
            height: getProportionateScreenHeight(120),
            child: DetailAppBar(screenName: painType.paintTypeName),
          ),
          Container(
            margin: EdgeInsets.only(
                top: getProportionateScreenHeight(140),
              left: 15,
              right: 15,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  painType.paintTypeList.length,
                  (index) => GradientBGButton(
                    text: painType.paintTypeList[index],
                    press: () {
                      Navigator.pushNamed(context, DetailInType.routeName,
                      arguments: PaintDetailIndex(detailIndex: index, typeIndex: paintTypeIndex),);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
