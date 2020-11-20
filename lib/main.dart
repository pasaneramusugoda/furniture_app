import 'package:flutter/material.dart';
import 'package:furniture_app/ui/theme/theme.dart';
import 'package:furniture_app/ui/views/main/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: MainView(),
    );
  }
}