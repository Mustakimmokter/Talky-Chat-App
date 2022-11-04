import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:takky/shared/utils/index.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    Key? key,
    required this.controller,
    required this.onChanged,
    this.onCompleted,
    this.hasError = false,
  }) : super(key: key);

  final TextEditingController controller;
  final bool hasError;
  final Function(String) onChanged;
  final ValueChanged<String>? onCompleted;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      textStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        fontFamily: 'Montserrat',
      ),
      cursorHeight: 18,
      appContext: context,
      length: 4,
      enableActiveFill: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        borderWidth: borderWidth,
        selectedColor: primaryBrand,
        selectedFillColor: primaryWhite,
        activeFillColor: blackOpacity,
        activeColor: hasError ? primaryDanger : inputBorderColor,
        inactiveColor: inputBorderColor,
        inactiveFillColor: blackOpacity,
        shape: PinCodeFieldShape.box,
        borderRadius:
            BorderRadius.circular(SizeUtils.getProportionateScreenHeight(07)),
        fieldHeight: SizeUtils.screenWidth * .150,
        fieldWidth: SizeUtils.screenWidth * .150,
        errorBorderColor: primaryDanger,
      ),
      cursorColor: primaryBrand,
      animationDuration: const Duration(milliseconds: 300),
      keyboardType: TextInputType.number,
      controller: controller,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      onCompleted: onCompleted,
      onChanged: onChanged,
    );
  }
}
