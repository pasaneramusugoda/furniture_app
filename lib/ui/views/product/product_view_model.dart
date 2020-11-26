import 'package:flutter/material.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:stacked/stacked.dart';

class ProductViewModel extends BaseViewModel {
  final Product product;
  final PageController pageController = PageController();
  final duration = Duration(milliseconds: 300);

  ProductViewModel(this.product) {
    print('${product.images.length}');
  }

  int _bannerPageIndex = 0;

  int get bannerPageIndex => _bannerPageIndex;

  set bannerPageIndex(int pageIndex) {
    _bannerPageIndex = pageIndex;
    notifyListeners();
  }

  int _colorIndex = 0;

  int get colorIndex => _colorIndex;

  set colorIndex(int colorIndex) {
    _colorIndex = colorIndex;
    notifyListeners();
  }

  int _qty = 1;

  int get qty => _qty;

  set qty(int qty) {
    _qty = qty;
    notifyListeners();
  }

  onTapImage(int index) {
    print('onTapImage $index');
    bannerPageIndex = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }

  onTapColor(int index) {
    colorIndex = index;
  }

  onTapIncrement() {
    qty += 1;
  }

  onTapDecrement() {
    if (qty <= 1) return;

    qty -= 1;
  }
}
