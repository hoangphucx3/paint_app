import 'package:app_ban_son/constants.dart';
import 'package:app_ban_son/models/product.dart';
import 'package:app_ban_son/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_bottom_bar.dart';
import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
      body: Stack(
        children: [
          CustomAppBar(
            height: getProportionateScreenHeight(150),
            child: const HomeAppBar(),
          ),
          Column(
            children: const [
              BuildProductList(),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildProductList extends StatelessWidget {
  const BuildProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.78,
        margin: EdgeInsets.only(
          top: getProportionateScreenWidth(110),
          left: getProportionateScreenWidth(5),
          right: getProportionateScreenWidth(5),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                demoProductList.length,
                (index) => ProductCard(
                  image: demoProductList[index].image,
                  name: demoProductList[index].name,
                  height: demoProductList[index].height,
                  press: () {
                    Navigator.pushNamed(
                        context, demoProductList[index].routeName,
                        arguments: ProductIndex(index: index));
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Image.asset('assets/icons/logo.png'),
                ),
              ),
            ],
          ),
        ));
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.height,
    required this.press,
  }) : super(key: key);

  final String image;
  final String name;
  final double height;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: Stack(
          children: [
            Container(
              width: getProportionateScreenWidth(400),
              height: getProportionateScreenHeight(height),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(36),
              margin: EdgeInsets.only(left: 8, top: height - 70),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              decoration: const BoxDecoration(
                  gradient: mSecondGradientColor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(15))),
              child: Text(
                name.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
