import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/ui/views/product/product_banner_indicator.dart';
import 'package:furniture_app/ui/views/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductBanner extends ViewModelWidget<ProductViewModel> {
  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Container(
      height: 480.h,
      margin: EdgeInsets.only(top: 70.h),
      child: Column(
        children: [
          Container(
            height: 348.h,
            child: PageView.builder(
              itemCount: model.product.images.length,
              controller: model.pageController,
              onPageChanged: (value) => model.bannerPageIndex = value,
              itemBuilder: (context, index) {
                var banner = model.product.images[index];
                return Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 348.h,
                    child: Image(
                      fit: BoxFit.cover,
                      image: banner,
                    ),
                  ),
                );
              },
            ),
          ),
          ProductBannerIndicator(),
        ],
      ),
    );
  }
}
