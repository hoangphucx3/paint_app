
import 'package:flutter/material.dart';

class ColorPanel with ChangeNotifier {
  int _colorIndex = 0;

  int get colorIndex => _colorIndex;

  void pickColor(int pickIndex) {
    _colorIndex = pickIndex;
    notifyListeners();
  }
}