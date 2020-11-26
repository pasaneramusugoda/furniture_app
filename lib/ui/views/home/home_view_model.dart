import 'package:flutter/material.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/ui/views/product/product_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _bannerPageIndex = 0;

  int get bannerPageIndex => _bannerPageIndex;

  set bannerPageIndex(int pageIndex) {
    _bannerPageIndex = pageIndex;
    notifyListeners();
  }

  onTapProduct(BuildContext context, Product product) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProductView(product)));
  }
}
