import 'package:flutter/cupertino.dart';
import 'package:random_color/random_color.dart';

class AppGeneralStateProvider with ChangeNotifier {
  int _pageIndex = 0;
  int _categoryIndex = 0;
  int _hitListIndex = 0;
  final List<ColorHue> _hueType = <ColorHue>[
    ColorHue.green,
    ColorHue.red,
    ColorHue.pink,
    ColorHue.purple,
    ColorHue.blue,
    ColorHue.yellow,
    ColorHue.orange
  ];

  int get hitListIndex => this._hitListIndex;

  set hitListIndex(int value) {
    this._hitListIndex = value;
    notifyListeners();
  }

  int get categoryIndex => this._categoryIndex;

  set categoryIndex(int value) {
    this._categoryIndex = value;
    notifyListeners();
  }

  get pageIndex => this._pageIndex;

  set pageIndex(value) {
    this._pageIndex = value;
    notifyListeners();
  }
}
