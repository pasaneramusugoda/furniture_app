import 'package:flutter/material.dart';

class Product {
  final String title;
  final String caption;
  final double price;
  final List<ImageProvider> images;
  final List<Color> colors;
  final String description;

  Product(this.title, this.caption, this.price, this.images, this.colors, this.description);
}