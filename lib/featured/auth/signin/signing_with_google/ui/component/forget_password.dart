import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: screenLeftPadding,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: CustomFlatBtn(
          onTap: onTap,
          text: 'Forget password?',
          textDecoration: TextDecoration.underline,
          underLineThickness: 1.4,
        ),
      ),
    );
  }
}
