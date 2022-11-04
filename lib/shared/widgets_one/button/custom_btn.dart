import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.onPressed,
    this.onLongPress,
    this.text,
    this.child,
    this.height,
    this.elevation,
    this.minWidth,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor,
    this.padding,
    this.horizontalPadding,
    this.verticalPadding,
    this.textColor,
    this.width,
    this.isTrue = true,
  });

  final VoidCallback? onPressed, onLongPress;
  final String? text;
  final Widget? child;
  final bool? isTrue;
  final double? height,
      elevation,
      width,
      minWidth,
      borderRadius,
      borderWidth,
      horizontalPadding,
      verticalPadding;
  final Color? borderColor, backgroundColor, textColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 0,
            vertical: verticalPadding ?? 0,
          ),
      child: SizedBox(
        width: width ?? double.maxFinite,
        height: height ?? 53,
        child: MaterialButton(
          disabledColor: Colors.grey.shade400,
          elevation: elevation ?? 0,
          onPressed: isTrue == true ? onPressed : null,
          color: backgroundColor ?? Colors.red,
          //constraints: BoxConstraints(),height: height ?? 40,
          minWidth: minWidth ?? 10,
          onLongPress: onLongPress,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 08),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0,
            ),
          ),
          child: child ??
              CustomTextOne(
                text: text ?? 'null',
                textColor: textColor ?? Colors.white,
              ),
        ),
      ),
    );
  }
}
