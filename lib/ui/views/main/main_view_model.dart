import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final PageController controller = PageController();

  double _horizontalPadding = 0;

  double get horizontalPadding => _horizontalPadding;

  void setHorizontalPadding(double padding) {
    _horizontalPadding = padding;
    notifyListeners();
  }

  int _mainPageIndex = 0;

  int get mainPageIndex => _mainPageIndex;

  set mainPageIndex(int mainPageIndex) {
    _mainPageIndex = mainPageIndex;
    notifyListeners();
  }

  onClickNav(int index) {
    mainPageIndex = 0;
    controller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.linearToEaseOut);
  }
}
