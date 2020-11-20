import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/data/fake_data.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/views/home/home_view_model.dart';
import 'package:furniture_app/ui/views/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class BannerIndicator extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Container(
      height: 5.0,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        primary: false,
        itemCount: FakeData.banners.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemBuilder: (BuildContext context, int index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 15.w,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: model.bannerPageIndex == index
                    ? AppColors.accent
                    : Colors.transparent,
                width: 2.0,
              ),
            ),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: model.bannerPageIndex == index
                    ? Colors.white
                    : AppColors.accent.withOpacity(0.5),
              ),
            ),
          );
        },
      ),
    );
  }
}
