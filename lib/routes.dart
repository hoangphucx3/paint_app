
import 'package:app_ban_son/screens/detail_screens/color_collections_screen.dart';
import 'package:app_ban_son/screens/detail_screens/detail_in_type_screen.dart';
import 'package:app_ban_son/screens/detail_screens/giai_phap_son_screen.dart';
import 'package:app_ban_son/screens/detail_screens/nha_dep_screen.dart';
import 'package:app_ban_son/screens/detail_screens/paint_details_screen.dart';
import 'package:app_ban_son/screens/detail_screens/paint_type_screen.dart';
import 'package:app_ban_son/screens/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  NhaDepScreen.routeName: (context) => const NhaDepScreen(),
  GiaiPhapScreen.routeName: (context) => const GiaiPhapScreen(),
  PaintType.routeName: (context) => const PaintType(),
  DetailInType.routeName: (context) => const DetailInType(),
  PaintDetailsScreen.routeName: (context) => const PaintDetailsScreen(),
  ColorCollectionsScreen.routeName: (context) => const ColorCollectionsScreen(),
};