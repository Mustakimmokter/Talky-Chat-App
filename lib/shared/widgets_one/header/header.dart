import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TalkyLogo(
          size: 32,
        ),
        SizedBox(height: SizeUtils.getProportionateScreenHeight(40)),
        CustomTextOne(text: text, fontSize: 16),
        SizedBox(
          height: SizeUtils.getProportionateScreenHeight(45),
        ),
      ],
    );
  }
}
