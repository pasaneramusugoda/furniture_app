import 'package:flutter/material.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import '../../core/extensions/string_ext.dart';

class BannerTitle extends StatelessWidget {
  final String title;

  const BannerTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var t = title.capitalizeFirstOfEach.split(' ');

    if (t.length > 1) {
      var f = t[0];
      var r = t.getRange(1, t.length).join(' ');
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(text: '$f\n', style: AppStyles.bannerTitle.copyWith(color: AppColors.accent)),
            TextSpan(text: r, style: AppStyles.bannerTitle),
          ],
        ),
      );
    } else
      return Text(title);
  }
}
