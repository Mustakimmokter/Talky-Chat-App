import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CustomFlatBtn extends StatelessWidget {
  const CustomFlatBtn({
    super.key,
    this.onTap,
    this.child,
    this.textColor,
    this.iconColor,
    this.iconSize,
    this.textSize,
    this.icon,
    this.text,
    this.color,
    this.underLineThickness,
    this.textDecoration,
  });
  final VoidCallback? onTap;
  final Widget? child;
  final Color? textColor, iconColor, color;
  final double? iconSize, textSize, underLineThickness;
  final IconData? icon;
  final String? text;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: child ??
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor ?? color,
                size: iconSize ?? 1,
              ),
              CustomTextOne(
                text: text ?? '',
                fontSize: textSize ?? 14,
                textColor: textColor ?? color,
                textDecoration: textDecoration,
                decorationThickness: underLineThickness,
              ),
            ],
          ),
    );
  }
}
