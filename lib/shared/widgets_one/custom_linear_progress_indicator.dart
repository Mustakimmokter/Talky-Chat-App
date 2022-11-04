import 'package:flutter/material.dart';

import 'index.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({
    super.key,
    this.height,
    this.radius,
    this.verticalMargin,
    this.padding,
    this.margin,
    this.alignment,
    this.child,
    this.boxDecoration,
    this.rightWidth,
    this.leftWidth,
    this.leftColor,
    this.rightColor,
  });
  final double? rightWidth, leftWidth, height, radius, verticalMargin;
  final Color? leftColor, rightColor;
  final EdgeInsets? padding, margin;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final Decoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: CustomContainer(
            color: rightColor ?? Color(0xfff2f2f2),
            width: rightWidth ?? 50,
            alignment: alignment,
            padding: padding,
            height: height,
            margin: margin,
            radius: radius,
            boxDecoration: boxDecoration,
            verticalMargin: verticalMargin,
            child: child,
          ),
        ),
        Positioned(
          child: CustomContainer(
            color: leftColor ?? Colors.teal,
            width: leftWidth ?? 20,
            alignment: alignment,
            padding: padding,
            height: height,
            margin: margin,
            radius: radius,
            boxDecoration: boxDecoration,
            verticalMargin: verticalMargin,
            child: child,
          ),
        ),
      ],
    );
  }
}
