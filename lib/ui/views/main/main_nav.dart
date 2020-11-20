import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/views/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainNav extends ViewModelWidget<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Container(
      child: BottomAppBar(
        color: Color(0xffF3F8FF),
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: model.horizontalPadding + 24.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: AnimatedSwitcher(
                  switchInCurve: Curves.linear,
                  switchOutCurve: Curves.linear,
                  duration: Duration(milliseconds: 200),
                  child: model.mainPageIndex == 0
                      ? Image(
                          key: Key('1'),
                          width: 24.w,
                          height: 24.h,
                          image:
                              R.svg.ic_home_active(width: 24.w, height: 24.h),
                        )
                      : Image(
                          key: Key('2'),
                          width: 18.w,
                          height: 20.h,
                          image: R.svg.ic_home(width: 18.w, height: 20.h),
                        ),
                ),
                onPressed: () => model.onClickNav(0),
              ),
              IconButton(
                icon: AnimatedSwitcher(
                  switchInCurve: Curves.linear,
                  switchOutCurve: Curves.linear,
                  duration: Duration(milliseconds: 200),
                  child: model.mainPageIndex == 1
                      ? Image(
                          key: Key('1'),
                          width: 25.w,
                          height: 28.5.h,
                          image:
                              R.svg.ic_bag_active(width: 25.w, height: 28.5.h),
                        )
                      : Image(
                          key: Key('2'),
                          width: 18.w,
                          height: 24.5.h,
                          image: R.svg.ic_bag(width: 18.w, height: 24.5.h),
                        ),
                ),
                onPressed: () => model.onClickNav(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
