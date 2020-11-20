import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/data/fake_data.dart';
import 'package:furniture_app/core/utils/currency.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import 'package:furniture_app/ui/views/main/main_view_model.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import '../../../core/extensions/string_ext.dart';

class ProductSection extends StatelessWidget {
  final String title;

  const ProductSection({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Provider.of<MainViewModel>(context, listen: false).horizontalPadding),
            child: Text(title.toUpperCase(), style: AppStyles.sectionTitle),
          ),
          Container(
            height: 320.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  var product = FakeData.products[index];
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 150.w,
                      height: 272.h,
                      margin: EdgeInsets.only(
                        top: 15.h,
                        left: index == 0
                            ? Provider.of<MainViewModel>(context, listen: false).horizontalPadding
                            : 0,
                        right: index == FakeData.products.length - 1
                            ? Provider.of<MainViewModel>(context, listen: false).horizontalPadding
                            : 0,
                      ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            child: Image(
                              width: 118.w,
                              height: 118.w,
                              fit: BoxFit.cover,
                              image: product.images[0],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 12.w, right: 12.w, bottom: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //let's set a minimum space
                                SizedBox(height: 16.0.h),
                                Text(
                                  product.title.capitalizeFirstOfEach,
                                  style: AppStyles.productTitle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 8.0.h),
                                Text(
                                  product.caption.capitalizeFirstOfEach,
                                  style: AppStyles.productDes,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 10.0.h),
                                Text(
                                  '${Currency().format(product.price)}',
                                  style: AppStyles.productPrice,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 28.0.w),
                itemCount: FakeData.products.length),
          ),
        ],
      ),
    );
  }
}
