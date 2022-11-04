import 'package:flutter/material.dart';
import 'package:takky/shared/utils/color_utils.dart';
import 'package:takky/shared/widgets_one/index.dart';

class TalkyLogo extends StatelessWidget {
  const TalkyLogo({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextOne(
          text: 'Talky',
          fontWeight: FontWeight.w600,
          fontSize: size ?? 38,
          textColor: secondaryBrandColor,
        ),
        CustomTextOne(
          text: '.',
          textColor: primaryBrand,
          fontSize: size ?? 38,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
