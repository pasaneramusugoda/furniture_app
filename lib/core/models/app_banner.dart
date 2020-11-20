import 'package:flutter/material.dart';

class AppBanner {
  final String categoryName;
  final String title;
  final String description;
  final String button;
  final ImageProvider image;

  const AppBanner(this.categoryName, this.title, this.description, this.button, this.image);
}