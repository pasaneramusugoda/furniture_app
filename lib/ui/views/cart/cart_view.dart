import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/data/fake_data.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/views/cart/cart_product.dart';
import 'package:furniture_app/ui/views/cart/cart_total.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
              image: R.svg.ic_more(width: 31.w, height: 7.h),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return CartProduct(product: FakeData.products[index]);
              },
              separatorBuilder: (context, index) => SizedBox(height: 24.0),
              itemCount: FakeData.products.length,
            ),
          ),
          CartTotal(),
        ],
      ),
    );
  }
}
