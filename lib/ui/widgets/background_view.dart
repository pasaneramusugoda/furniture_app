import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class BackgroundView extends StatelessWidget {
  final Widget child;

  const BackgroundView({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child,
        ],
      ),
    );
  }
}
