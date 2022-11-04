import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.textInputType,
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.obscureText,
    this.obscuringCharacter,
    this.hintText,
    this.labelText,
    this.decoration,
    this.contentPadding,
    this.border,
    this.focusBorder,
    this.prefix,
    this.suffix,
    this.onTap,
    this.onChange,
    this.focusBorderColor,
    this.focusBorderRadius,
    this.enabledBorderColor,
    this.enabledBorderRadius,
    this.label,
    this.fillColor,
    this.prefixIcon,
    this.suffixIcon,
    this.elevation,
    this.shadowColor,
    this.isRequired,
    this.inputFormatters,
    this.isBorder = true,
    this.enabled,
    this.cursorColor,
    this.cursorHeight,
    this.autofocus = false,
    this.onSubmitted,
  });

  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextStyle? textStyle, hintStyle, labelStyle;
  final bool? obscureText, isRequired, isBorder, enabled, autofocus;
  final String? obscuringCharacter, hintText, labelText;
  final InputDecoration? decoration;
  final EdgeInsets? contentPadding;
  final OutlineInputBorder? border, focusBorder;
  final Widget? prefix, suffix, label, prefixIcon, suffixIcon;
  final VoidCallback? onTap;
  final Function(String)? onChange, onSubmitted;
  final Color? focusBorderColor,
      enabledBorderColor,
      fillColor,
      shadowColor,
      cursorColor;
  final double? focusBorderRadius, enabledBorderRadius, elevation, cursorHeight;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 0,
      borderRadius: BorderRadius.circular(enabledBorderRadius ?? 00),
      shadowColor: shadowColor,
      child: TextField(
        controller: controller,
        toolbarOptions: const ToolbarOptions(
          selectAll: true,
          copy: true,
          cut: true,
          paste: true,
        ),
        // strutStyle: StrutStyle(height: 2),
        keyboardType: textInputType,
        style: textStyle,
        onTap: onTap,
        onChanged: onChange,
        obscureText: obscureText ?? false,
        obscuringCharacter: obscuringCharacter ?? '*',
        enabled: enabled,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorWidth: 1.5,
        autofocus: autofocus!,
        onSubmitted: onSubmitted,

        decoration: decoration ??
            InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              filled: true,
              label: label,
              fillColor: fillColor ?? Colors.transparent,
              enabledBorder: border ??
                  OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(enabledBorderRadius ?? 02),
                    borderSide: BorderSide(
                      color: enabledBorderColor ?? Color(0xff717171),
                    ),
                  ),
              contentPadding: contentPadding,
              focusedBorder: focusBorder ??
                  OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(focusBorderRadius ?? 02),
                    borderSide: BorderSide(
                      color: focusBorderColor ?? Color(0xff717171),
                    ),
                  ),
              hintText: hintText,
              labelText: labelText,
              labelStyle: labelStyle,
              hintStyle: hintStyle,
              alignLabelWithHint: false,
              suffix: suffix,
              prefix: prefix,
            ),
      ),
    );
  }
}
