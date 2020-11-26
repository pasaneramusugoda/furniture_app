import 'package:flutter/material.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import 'package:furniture_app/ui/views/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductQty extends ViewModelWidget<ProductViewModel> {
  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quantity:', style: AppStyles.productDetailOption),
        SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => model.onTapDecrement(),
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xffE9F2FE),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                child: Image(
                    width: 14, image: R.svg.ic_minus(width: 14, height: 1)),
              ),
            ),
            SizedBox(width: 20),
            Text('${model.qty}', style: AppStyles.productDetailQty),
            SizedBox(width: 20),
            InkWell(
              onTap: () => model.onTapIncrement(),
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xffE9F2FE),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                child: Image(
                    width: 14,
                    height: 14,
                    image: R.svg.ic_plus(width: 14, height: 14)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
