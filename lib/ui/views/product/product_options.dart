import 'package:flutter/material.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import 'package:furniture_app/ui/views/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductOptions extends ViewModelWidget<ProductViewModel> {
  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color:', style: AppStyles.productDetailOption),
        SizedBox(height: 8),
        Container(
          height: 36.0,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(
                  child: InkWell(
                    onTap: () => model.onTapColor(index),
                    child: AnimatedContainer(
                      duration: model.duration,
                      width: 34,
                      height: 34,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: model.colorIndex == index
                              ? model.product.colors[index]
                              : Colors.white,
                          width: model.colorIndex == index ? 1.0 : 0.0,
                        ),
                      ),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: model.product.colors[index]),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 20),
              itemCount: model.product.colors.length),
        ),
      ],
    );
  }
}
