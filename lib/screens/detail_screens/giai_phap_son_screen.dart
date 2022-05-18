import 'package:app_ban_son/models/paint_type.dart';
import 'package:app_ban_son/models/product.dart';
import 'package:app_ban_son/screens/detail_screens/background_image_with_logo.dart';
import 'package:app_ban_son/components/gradient_bg_button.dart';
import 'package:app_ban_son/screens/detail_screens/paint_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_ban_son/components/custom_appbar.dart';

import '../../components/custom_bottom_bar.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';

class GiaiPhapScreen extends StatelessWidget {
  const GiaiPhapScreen({Key? key}) : super(key: key);
  static String routeName = '/giai_phap_screen';

  @override
  Widget build(BuildContext context) {
    final ProductIndex argument =
        ModalRoute.of(context)?.settings.arguments as ProductIndex;
    final productIndex = argument.index;
    final product = demoProductList[productIndex];

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: Stack(
        children: [
          CustomAppBar(
            height: getProportionateScreenHeight(150),
            child: DetailAppBar(screenName: product.name),
          ),
          Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(120)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(254),
                    child: BackgroundImageWithLogo(
                        bgPath: 'assets/images/bg_giai_phap.png'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    // height: getProportionateScreenHeight(400),
                    color: Color(0xFFF1F0F5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'SƠN NHÀ ĐÚNG CÁCH',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                demoProductList.length,
                                (index) => GiaiPhapCard(
                                      image: demoProductList[index].image,
                                      description:
                                          'Công bố kết quả "giải thưởng nhà đẹp" t5/2021',
                                    )),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'TRA CỨU SẢN PHẨM',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        ...List.generate(
                          demoPaintList.length,
                          (index) => GradientBGButton(
                            text: demoPaintList[index].paintTypeName,
                            press: () {
                              Navigator.pushNamed(context, PaintType.routeName,
                                  arguments: PaintTypeIndex(typeIndex: index));
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        GradientBGButton(
                            text: 'Tính toán lượng sơn', press: () {}),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GiaiPhapCard extends StatelessWidget {
  const GiaiPhapCard({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: getProportionateScreenWidth(170),
      child: Column(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(170),
            height: getProportionateScreenHeight(100),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF909090),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
