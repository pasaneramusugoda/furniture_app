import 'package:flutter/material.dart';
import 'package:furniture_app/core/models/app_banner.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/r.g.dart';

class FakeData {
  static final List<AppBanner> banners = [
    AppBanner(
        'Collection',
        'New Arrivals',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
        'Shop Now',
        R.image.img_banner_1()),
    AppBanner(
        'Deals',
        'Best Deals Ever',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
        'Shop Now',
        R.image.img_banner_1()),
    AppBanner(
        'Shopping',
        'Best Selling',
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
        'Shop Now',
        R.image.img_banner_1()),
  ];
  static final List<Product> products = [
    Product(
      'Wingback Chair',
      'modern saddle arms and wooden legs.',
      1512.0,
      [R.image.img_poduct_1()],
      [Color(0xffC88B93)],
      'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
    ),
    Product(
      'Nashville armchair',
      'curved with two tiers of comfort.',
      1895.0,
      [
        R.image.img_product_2(),
        R.image.img_product_2_1(),
        R.image.img_product_2_2(),
        R.image.img_product_2_3(),
        R.image.img_product_2_4(),
        R.image.img_product_2_5()
      ],
      [
        Color(0xff2F4B81),
        Color(0xffBC4747),
        Color(0xffFEC286),
        Color(0xff47BC66),
      ],
      'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
    ),
    Product(
      'Ellington Office Chair',
      'modern saddle arms and wooden legs.',
      13834.0,
      [R.image.img_product_3()],
      [Colors.black],
      'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
    ),
    Product(
      'chaise corner sofa',
      'modern saddle arms and wooden legs.',
      82000.0,
      [R.image.img_product_4()],
      [Color(0xff1A3536)],
      'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
    ),
  ];
}
