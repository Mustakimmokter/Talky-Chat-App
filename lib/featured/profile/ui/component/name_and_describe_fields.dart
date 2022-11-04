import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class NameAndDescribeField extends StatelessWidget {
  const NameAndDescribeField(
      {super.key,
      required this.nameCTRL,
      required this.describeCTRL,
      required this.nameOnChange,
      required this.describeOnChange});

  final TextEditingController nameCTRL;
  final TextEditingController describeCTRL;
  final Function(String) nameOnChange, describeOnChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name field
        _textField(
            hintText: 'Enter your name or nickname',
            onChange: nameOnChange,
            controller: nameCTRL),
        SizedBox(height: SizeUtils.getProportionateScreenHeight(16)),
        // Describe field
        _textField(
            hintText: 'Enter a description',
            controller: describeCTRL,
            onChange: describeOnChange),
      ],
    );
  }

  Widget _textField(
      {TextEditingController? controller,
      Function(String)? onChange,
      String? hintText}) {
    return CustomTextField(
      controller: controller,
      onChange: onChange,
      contentPadding: EdgeInsets.symmetric(
        horizontal: SizeUtils.getProportionateScreenWidth(17),
        vertical: SizeUtils.getProportionateScreenHeight(17),
      ),
      hintText: hintText,
      focusBorderRadius: 08,
      enabledBorderRadius: 08,
    );
  }
}
