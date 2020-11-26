import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/currency.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xffE9F2FE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price For 4 Item(s)',
                  style: AppStyles.cartText,
                  maxLines: 1,
                ),
                SizedBox(height: 8),
                Text(
                  Currency().format(99241),
                  style: AppStyles.cartPrice,
                ),
              ],
            ),
          ),
          FittedBox(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.accent,
                shadowColor: const Color(0xff003EAB).withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                minimumSize: Size(163, 55),
              ),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: AppStyles.cartButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
