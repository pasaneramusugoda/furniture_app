import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/views/bag/bag_view.dart';
import 'package:furniture_app/ui/views/home/home_view.dart';
import 'package:furniture_app/ui/views/home/main_banner.dart';
import 'package:furniture_app/ui/views/main/main_nav.dart';
import 'package:furniture_app/ui/views/main/main_view_model.dart';
import 'package:furniture_app/ui/views/home/product_section.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  @override
  Widget builder(BuildContext context, MainViewModel model, Widget child) {
    ScreenUtil.init(context,
        designSize: Size(414, 896), allowFontScaling: true);

    //since main padding depends on banner width
    model.setHorizontalPadding((ScreenUtil().screenWidth - 346.w) / 2);

    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            width: 109.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffE9F2FE),
                  Color(0xffE9F2FE).withOpacity(0),
                ],
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Image(
                  width: 24.w,
                  height: 24.h,
                  image: R.svg.ic_menu(width: 21.w, height: 8.h),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image(
                    width: 24.w,
                    height: 24.h,
                    image: R.svg.ic_search(width: 20.w, height: 20.h),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 42.0.w,
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2.w, color: Color(0xffE6EEFE)),
                    ),
                    child: Image(image: R.image.img_user()),
                  ),
                ),
              ],
            ),
            body: PageView(
              controller: model.controller,
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomeView(),
                BagView(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Image(
                width: 12.w,
                height: 15.5.h,
                image: R.svg.ic_bookmark(width: 12.w, height: 15.5.h),
              ),
              onPressed: () {},
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: MainNav(),
          ),
        ],
      ),
    );
  }

  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  bool get reactive => false;
}
