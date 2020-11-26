import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/extensions/string_ext.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/core/utils/currency.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import 'package:furniture_app/ui/views/product/product_banner.dart';
import 'package:furniture_app/ui/views/product/product_options.dart';
import 'package:furniture_app/ui/views/product/product_qty.dart';
import 'package:furniture_app/ui/views/product/product_view_model.dart';
import 'package:furniture_app/ui/widgets/background_view.dart';
import 'package:stacked/stacked.dart';

class ProductView extends ViewModelBuilderWidget<ProductViewModel> {
  final Product product;

  ProductView(this.product);

  @override
  Widget builder(BuildContext context, ProductViewModel model, Widget child) {
    return BackgroundView(
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ProductBanner(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      product.title.capitalizeFirstOfEach,
                      style: AppStyles.productDetailTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      '${Currency().format(product.price)}',
                      style: AppStyles.productDetailPrice,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: ProductOptions()),
                        ProductQty(),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      product.description,
                      style: AppStyles.productDetailDes,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    height: 72.0,
                    decoration: BoxDecoration(
                      color: AppColors.accent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Image(
                          width: 25,
                          height: 25,
                          image: R.svg.ic_cart(width: 20, height: 20),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'Add to Cart'.allInCaps,
                            textAlign: TextAlign.center,
                            style: AppStyles.productDetailOption
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 0,
              right: 0,
              child: AppBar(
                primary: false,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Image(
                    width: 24.w,
                    height: 24.h,
                    image: R.svg.ic_arrow_back(width: 21.w, height: 8.h),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      width: 24.w,
                      height: 24.h,
                      image: R.svg.ic_bookmark(width: 9.w, height: 12.h),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ProductViewModel viewModelBuilder(BuildContext context) =>
      ProductViewModel(product);
}
