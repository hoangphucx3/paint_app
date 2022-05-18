import 'package:app_ban_son/models/paint_details.dart';
import 'package:app_ban_son/screens/detail_screens/paint_details_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_bottom_bar.dart';
import '../../models/paint_type.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';

class DetailInType extends StatelessWidget {
  const DetailInType({Key? key}) : super(key: key);
  static String routeName = '/detail_in_type_screen';

  @override
  Widget build(BuildContext context) {
    final PaintDetailIndex argument =
        ModalRoute.of(context)?.settings.arguments as PaintDetailIndex;
    final paintTypeIndex = argument.typeIndex;
    final paintDetailIndex = argument.detailIndex;
    final screenName =
        demoPaintList[paintTypeIndex].paintTypeList[paintDetailIndex];
    final painDetailMap = demoPaintList[paintTypeIndex].detailInType;
    final painDetailList = painDetailMap[screenName];

    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
      body: Stack(
        children: [
          CustomAppBar(
            height: getProportionateScreenHeight(120),
            child: DetailAppBar(screenName: screenName),
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
                  painDetailList!.length,
                  (index) => PaintDetailCard(
                    painDetailList: painDetailList,
                    index: index,
                    press: () {
                      Navigator.pushNamed(context, PaintDetailsScreen.routeName,
                      arguments: PaintDetailsData(details: painDetailList[index]),);
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

class PaintDetailCard extends StatelessWidget {
  const PaintDetailCard({
    Key? key,
    required this.painDetailList,
    required this.index, required this.press,
  }) : super(key: key);

  final List<PaintDetails>? painDetailList;
  final int index;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: getProportionateScreenWidth(100),
              height: getProportionateScreenHeight(95),
              child: Image.asset(
                'assets/images/ic_paint.png',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              painDetailList![index].name.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF909090),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
