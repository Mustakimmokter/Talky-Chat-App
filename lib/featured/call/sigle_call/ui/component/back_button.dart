import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class Back extends StatelessWidget {
  const Back({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRoundedBtn(
          onTap: onTap,
          color: Colors.grey.shade400,
          iconColor: Colors.white,
        ),
        const SizedBox(width: 05),
        const CustomTextOne(
          text: 'Back',
          textColor: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
