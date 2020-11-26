import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/views/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductBannerIndicator extends ViewModelWidget<ProductViewModel> {
  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Container(
      height: 120.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                  top: 15.h,
                  left: index == 0 ? 24.w : 0,
                  right: index == model.product.images.length - 1 ? 24.w : 0,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(19.w),
                  onTap: () => model.onTapImage(index),
                  child: AnimatedOpacity(
                    opacity: index == model.bannerPageIndex ? 1 : 0.3,
                    duration: model.duration,
                    child: AnimatedContainer(
                      duration: model.duration,
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.w),
                        boxShadow: [
                          BoxShadow(
                              color: index == model.bannerPageIndex
                                  ? AppColors.accent.withOpacity(0.16)
                                  : Colors.white,
                              offset: Offset(6, 6),
                              blurRadius: 20),
                        ],
                        color: Colors.white,
                      ),
                      child: Image(
                        width: 64,
                        height: 64,
                        image: model.product.images[index],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 24.0);
          },
          itemCount: model.product.images.length),
    );
  }
}
