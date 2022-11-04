import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({
    super.key,
    required this.svg,
    this.isNetworkSvg = false,
    this.height = 18,
    this.width = 18,
    this.color,
  });

  final String svg;
  final bool isNetworkSvg;
  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return isNetworkSvg
        ? SvgPicture.network(
            svg,
            height: height,
            width: width,
            color: color,
          )
        : SvgPicture.asset(
            'assets/$svg',
            height: height,
            width: width,
            color: color,
          );
  }
}
