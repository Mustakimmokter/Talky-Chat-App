import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomTextOne(text: 'Already have an account?'),
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
