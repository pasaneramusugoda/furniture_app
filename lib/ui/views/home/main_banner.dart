import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/core/data/fake_data.dart';
import 'package:furniture_app/ui/theme/colors.dart';
import 'package:furniture_app/ui/theme/styles.dart';
import 'package:furniture_app/ui/views/home/home_view_model.dart';
import 'package:furniture_app/ui/widgets/banner_title.dart';
import 'package:furniture_app/ui/widgets/smart/banner_indicator/banner_indicator.dart';
import 'package:stacked/stacked.dart';

import '../../../core/extensions/string_ext.dart';

class MainBanner extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Container(
      height: 244.h,
      child: Stack(
        children: [
          PageView.builder(
            pageSnapping: true,
            itemCount: FakeData.banners.length,
            controller: PageController(
              viewportFraction: 0.88,
            ),
            onPageChanged: (value) => model.bannerPageIndex = value,
            itemBuilder: (context, index) {
              var banner = FakeData.banners[index];
              return Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 346.w,
                  height: 202.h,
                  margin: EdgeInsets.only(top: 15.h),
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
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        right: 150.w,
                        left: 0,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                banner.categoryName.toUpperCase(),
                                style: AppStyles.bannerCategory,
                              ),
                              BannerTitle(title: banner.title),
                              Text(
                                banner.description.capitalizeFirstOfEach,
                                style: AppStyles.bannerDes,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(banner.button.toUpperCase()),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Image(
                          fit: BoxFit.cover,
                          image: banner.image,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 40,
            right: 50,
            left: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: BannerIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
