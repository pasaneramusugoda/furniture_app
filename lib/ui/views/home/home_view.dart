import 'package:flutter/material.dart';
import 'package:furniture_app/ui/views/home/home_view_model.dart';
import 'package:furniture_app/ui/views/home/main_banner.dart';
import 'package:furniture_app/ui/views/home/product_section.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {

  @override
  Widget builder(BuildContext context, HomeViewModel model, Widget child) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MainBanner(),
            ProductSection(title: 'best selling'),
            ProductSection(title: 'trending'),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  bool get reactive => false;
}
