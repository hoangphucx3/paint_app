import 'package:app_ban_son/constants.dart';
import 'package:app_ban_son/models/color_panel.dart';
import 'package:app_ban_son/screens/detail_screens/pick_color_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_bottom_bar.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';

class ColorCollectionsScreen extends StatelessWidget {
  const ColorCollectionsScreen({Key? key}) : super(key: key);
  static String routeName = '/color_collections_screen';

  @override
  Widget build(BuildContext context) {
    // int colorIndex = 0;

    return MultiProvider (
      providers: [
        ChangeNotifierProvider(create: (_) => ColorPanel(),),
      ],
      child: Scaffold(
        bottomNavigationBar: const CustomBottomBar(),
        body: Stack(
          children: [
            CustomAppBar(
              height: getProportionateScreenHeight(120),
              child: const DetailAppBar(screenName: 'BỘ SƯU TẬP MÀU SẮC'),
            ),
            Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(140),
                left: 15,
                right: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    PickColorField(),
                    SizedBox(height: 15),
                    ColorSearchField(),
                    SizedBox(height: 25),
                    BuildColorList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class PickColorField extends StatelessWidget {
  const PickColorField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const PickColorDialog();
            }).then((value) {
          context.read<ColorPanel>().pickColor(value);
        });
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'TimeLess Off-Whites ${context.watch<ColorPanel>().colorIndex}',
                  style: const TextStyle(
                      color: mPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.red,
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.green,
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.blue,
            ),
            Container(
              width: 23,
              height: 23,
              margin: const EdgeInsets.all(15),
              child: const Icon(Icons.keyboard_arrow_down),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorSearchField extends StatelessWidget {
  const ColorSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white60,
              hintText: 'Nhập tên hoặc mã',
              hintStyle: TextStyle(color: mPrimaryColor),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          color: const Color(0xFFBE0505),
          child: const Text(
            'Tìm kiếm',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class BuildColorList extends StatelessWidget {
  const BuildColorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 10 / 9),
        itemCount: 30,
        itemBuilder: (_, index) => const ColorCard(),
      ),
    );
  }
}

class ColorCard extends StatelessWidget {
  const ColorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth / 3 - 15,
            height: 60,
            color: const Color(0xFFF0F1F5),
          ),
          const Text.rich(
            TextSpan(
              text: 'Simply White\n',
              children: [
                TextSpan(
                  text: 'NP OW 2146P',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
