import 'package:app_ban_son/models/product.dart';
import 'package:app_ban_son/screens/detail_screens/background_image_with_logo.dart';
import 'package:app_ban_son/components/gradient_bg_button.dart';
import 'package:flutter/material.dart';
import 'package:app_ban_son/components/custom_appbar.dart';

import '../../components/custom_bottom_bar.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';


class NhaDepScreen extends StatelessWidget {
  const NhaDepScreen({Key? key}) : super(key: key);
  static String routeName = '/nha_dep_screen';

  @override
  Widget build(BuildContext context) {
    final ProductIndex argument =
        ModalRoute.of(context)?.settings.arguments as ProductIndex;
    final productIndex = argument.index;
    final product = demoProductList[productIndex];

    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
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
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(254),
                    child: const BackgroundImageWithLogo(bgPath: 'assets/images/bg_son_mau.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    height: getProportionateScreenHeight(300),
                    color: const Color(0xFFF1F0F5),
                    child: Column(
                      children: [
                        GradientBGButton(text: 'Nhà phố', press: () {}),
                        GradientBGButton(text: 'Nhà vườn', press: () {}),
                        GradientBGButton(text: 'Biệt thự', press: () {}),
                      ],
                    ),
                  ),
                  const BuildProductView(viewType: 'Nhà đẹp', color: Color(0xFFE1F0ED)),
                  const BuildProductView(viewType: 'Video', color: Color(0xFFDBDBDB)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildProductView extends StatelessWidget {
  const BuildProductView({
    Key? key,
    required this.viewType, required this.color,
  }) : super(key: key);
  final String viewType;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: getProportionateScreenHeight(400),
      width: double.infinity,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            viewType.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFF909090),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => const DetailImageCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailImageCard extends StatelessWidget {
  const DetailImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: getProportionateScreenWidth(280),
            height: getProportionateScreenHeight(295),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xFFD6D6D6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              'assets/images/nha_dep.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: getProportionateScreenWidth(35),
            bottom: -20,
            child: Container(
              width: getProportionateScreenWidth(230),
              height: getProportionateScreenHeight(47),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurStyle: BlurStyle.inner,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                      spreadRadius: 3),
                ],
              ),
              child: const Center(
                child: Text(
                  'NGUYỄN VĂN TÌNH',
                  style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
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