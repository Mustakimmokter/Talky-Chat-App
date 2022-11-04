import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CustomBackBtn extends StatelessWidget {
  const CustomBackBtn({
    super.key,
    required this.onTap,
    this.text = 'back',
  });
  final VoidCallback onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRoundedBtn(
          onTap: onTap,
          color: Colors.blue.shade50,
          iconColor: primaryBrand,
        ),
        const SizedBox(width: 05),
        CustomTextOne(
          text: text!,
          textColor: primaryBrand,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
