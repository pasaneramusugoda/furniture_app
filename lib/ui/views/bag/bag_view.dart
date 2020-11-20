import 'package:flutter/material.dart';

class BagView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My Bag', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
