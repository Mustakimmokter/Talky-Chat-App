import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CustomRoundedBtn extends StatelessWidget {
  const CustomRoundedBtn({
    super.key,
    this.onTap,
    this.child,
    this.iconColor,
    this.iconSize,
    this.icon,
    this.color,
    this.size,
    this.isBack = true,
    this.shadowColor,
    this.shadowSize,
    this.isShadow = false,
  });
  final VoidCallback? onTap;
  final Widget? child;
  final Color? iconColor, color, shadowColor;
  final double? iconSize, size, shadowSize;
  final IconData? icon;
  final bool? isBack, isShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child ??
          CustomContainer(
            height: size ?? 28,
            width: size ?? 28,
            color: color ?? Colors.blue,
            boxShadow: isShadow!
                ? [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: shadowSize ?? 05,
                      color: shadowColor ?? Colors.grey.shade300,
                    ),
                  ]
                : null,
            child: Icon(
              icon ?? (isBack! ? Icons.arrow_back : Icons.arrow_forward),
              color: iconColor ?? Colors.white,
              size: iconSize ?? 22,
            ),
          ),
    );
  }
}
