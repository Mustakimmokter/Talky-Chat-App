import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.onTap,
    this.text = 'Already have an account?',
  });
  final VoidCallback onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextOne(text: text!),
        SizedBox(height: SizeUtils.getProportionateScreenHeight(04)),
        CustomFlatBtn(
          onTap: onTap,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 03, vertical: 02),
            child: CustomTextOne(
              text: 'Sign up here',
              textColor: primaryBrand,
            ),
          ),
        ),
      ],
    );
  }
}
