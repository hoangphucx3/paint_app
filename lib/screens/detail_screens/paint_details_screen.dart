import 'package:app_ban_son/components/gradient_bg_button.dart';
import 'package:app_ban_son/constants.dart';
import 'package:app_ban_son/screens/detail_screens/color_collections_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_bottom_bar.dart';
import '../../models/paint_details.dart';
import '../../size_config.dart';
import 'detail_appbar.dart';

class PaintDetailsScreen extends StatelessWidget {
  const PaintDetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/paint_details_screen';

  @override
  Widget build(BuildContext context) {
    final PaintDetailsData argument =
        ModalRoute.of(context)?.settings.arguments as PaintDetailsData;
    final paintData = argument.details;

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: Stack(
        children: [
          CustomAppBar(
            height: getProportionateScreenHeight(120),
            child: DetailAppBar(screenName: paintData.type.toUpperCase()),
          ),
          Container(
            margin: EdgeInsets.only(
              top: getProportionateScreenHeight(140),
              left: 15,
              right: 15,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductDescription(paintData: paintData),
                  ProductConstruction(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductConstruction extends StatelessWidget {
  const ProductConstruction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          BangLoaiSP(),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DỮ LIỆU THI CÔNG',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.white, width: 2),
                  verticalInside: BorderSide(color: Colors.white, width: 2),
                ),
                columnWidths: {
                  0:FlexColumnWidth(2),
                  1:FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: mPrimaryColor),
                    children: [
                      BuildTableCellWithIcon(iconPath: 'assets/icons/ic_mau_son.png', fontSize: 12,text: 'Dụng cụ', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                      BuildTableCell(fontSize: 12,text: 'Dao trét', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: mSecondColor),
                    children: [
                      BuildTableCellWithIcon(iconPath: 'assets/icons/ic_mau_son.png', fontSize: 12,text: 'Dụng cụ', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                      BuildTableCell(fontSize: 12,text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: mPrimaryColor),
                    children: [
                      BuildTableCellWithIcon(iconPath: 'assets/icons/ic_mau_son.png', fontSize: 12,text: 'Dụng cụ', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                      BuildTableCell(fontSize: 12,text: 'Dao trét', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.white, width: 2),
                  verticalInside: BorderSide(color: Colors.white, width: 2),
                ),
                columnWidths: {
                  0:FlexColumnWidth(2),
                  1:FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: mPrimaryColor),
                    children: [
                      BuildTableCell(fontSize: 15,text: '40 KG', textAlign: TextAlign.start, fontWeight: FontWeight.bold),
                      BuildTableCell(fontSize: 15,text: '364,000 VNĐ', textAlign: TextAlign.start, fontWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3),
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.white, width: 2),
                  verticalInside: BorderSide(color: Colors.white, width: 2),
                ),
                columnWidths: {
                  0:FlexColumnWidth(2),
                  1:FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: mSecondColor),
                    children: [
                      BuildTableCell(fontSize: 15,text: 'Giá trên là giá tham khảo đã bao gồm VAT dành cho sơn màu nhạt. Giá dành cho sơn màu đậm và màu đặc biệt, vui lòng liên hệ Đại lý gần nhất để được tư vấn chi tiết', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('DÀNH CHO NHÀ THI CÔNG', textAlign: TextAlign.end,style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16,),
                  ],
                ),
              ),
              GradientBGButton(text: 'MUA SẢN PHẨM', press: () {}),
            ],
          )
        ],
      ),
    );
  }
}

class BangLoaiSP extends StatelessWidget {
  const BangLoaiSP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: mPrimaryColor,
              ),
              children: [
                BuildTableCell(
                  fontSize: 15,
                  text: 'Tường trát vữa, Tường gạch, Bê tông',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 2),
        Table(
          border: TableBorder(
            horizontalInside: BorderSide(color: Colors.white, width: 2),
            verticalInside: BorderSide(color: Colors.white, width: 2),
          ),
          columnWidths: {
            0:FlexColumnWidth(1),
            1:FlexColumnWidth(2.5),
            2:FlexColumnWidth(1),
          },

          children: [
            TableRow(
              decoration: BoxDecoration(color: mPrimaryColor),
              children: [
                BuildTableCell(fontSize: 12,text: 'Loại', textAlign: TextAlign.center, fontWeight: FontWeight.bold),
                BuildTableCell(fontSize: 12,text: 'Tên sản phẩm', textAlign: TextAlign.start, fontWeight: FontWeight.bold),
                BuildTableCell(fontSize: 12,text: 'Số lớp', textAlign: TextAlign.center, fontWeight: FontWeight.bold),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: mSecondColor),
              children: [
                BuildTableCell(fontSize: 12,text: 'Bột trét', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: 'Skimcoat Kinh Tế', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: '2-3 lớp', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: mSecondColor),
              children: [
                BuildTableCell(fontSize: 12,text: 'Sơn lót', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: 'Odour-less Sealer/Matex Sealer', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: '1 lớp', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: mSecondColor),
              children: [
                BuildTableCell(fontSize: 12,text: 'Sơn phủ', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: 'Sơn phủ nội thất Nippon', textAlign: TextAlign.start, fontWeight: FontWeight.normal),
                BuildTableCell(fontSize: 12,text: '2 lớp', textAlign: TextAlign.center, fontWeight: FontWeight.normal),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class BuildTableCell extends StatelessWidget {
  const BuildTableCell({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.fontWeight, required this.fontSize,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Text(
              text,
              textAlign: textAlign,
              style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildTableCellWithIcon extends StatelessWidget {
  const BuildTableCellWithIcon({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.fontWeight, required this.fontSize, required this.iconPath,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        height: 35,
        padding: EdgeInsets.only(left: 5),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ImageIcon(
                    AssetImage(iconPath),
                    size: 18,
                  ),
                ),
                Text(
                  text,
                  textAlign: textAlign,
                  style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.paintData,
  }) : super(key: key);

  final PaintDetails paintData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            paintData.name.toUpperCase(),
            style: TextStyle(
              fontSize: 15,
              color: mPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            paintData.type,
            style: TextStyle(
              fontSize: 12,
              color: mPrimaryColor,
              height: 2,
            ),
          ),
          SizedBox(
            child: Center(
              child: Image.asset(paintData.imgPath),
            ),
          ),
          Text(
            paintData.description,
            style: TextStyle(
              fontSize: 12,
              color: mPrimaryColor,
              height: 1.5,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MÃ SP: NHP',
                style: TextStyle(
                  fontSize: 15,
                  color: mPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'HƯỚNG DẪN CHỌN MÀU',
                style: TextStyle(
                  fontSize: 12,
                  color: mPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ColorCollectionsScreen.routeName);
            },
            child: Text(
              'CHỌN MÃ MÀU',
              style: TextStyle(
                fontSize: 12,
                color: mPrimaryColor,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),
          ),
          Text(
            'CHỌN CỠ THÙNG',
            style: TextStyle(
              fontSize: 12,
              color: mPrimaryColor,
              fontWeight: FontWeight.bold,
              height: 2,
            ),
          ),
          Row(
            children: List.generate(
              paintData.size.length,
              (index) => ChooseProductSize(
                size: paintData.size[index],
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseProductSize extends StatelessWidget {
  const ChooseProductSize({Key? key, required this.size, required this.press})
      : super(key: key);

  final int size;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        child: Text(
          '${size}KG',
          style: TextStyle(
              fontSize: 12,
              color: mPrimaryColor,
              fontWeight: FontWeight.bold,
              height: 2),
        ),
      ),
    );
  }
}
