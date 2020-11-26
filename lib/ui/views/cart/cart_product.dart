import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/extensions/string_ext.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/core/utils/currency.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';

class CartProduct extends StatelessWidget {
  final Product product;

  const CartProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
      ),
      child: Container(
        height: 131.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.w),
          boxShadow: [
            BoxShadow(
                color: AppColors.accent.withOpacity(0.16),
                offset: Offset(6, 6),
                blurRadius: 20),
          ],
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 89.w,
              child: Image(
                width: 89.w,
                height: 89.w,
                fit: BoxFit.cover,
                image: product.images[0],
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Expanded(
                        child: Text(
                          product.title.capitalizeFirstOfEach,
                          style: AppStyles.productCartTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '${Currency().format(product.price)}',
                        style: AppStyles.productCartTitle
                            .copyWith(color: AppColors.accent),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0.h),
                  Text(
                    'Quantity : 1',
                    style: AppStyles.productCartDes,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0.h),
                  Text(
                    'Color : Royal Blue',
                    style: AppStyles.productCartDes,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size.zero,
                      ),
                      icon: Image(
                        width: 9,
                        height: 10,
                        image: R.svg.ic_remove(width: 9, height: 10),
                      ),
                      label: Text(
                        'Remove'.allInCaps,
                        style: AppStyles.productCartRemove,
                      ),
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
}
