import 'dart:io';

import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ProfilePicContainer extends StatelessWidget {
  const ProfilePicContainer({
    super.key,
    this.onTap,
    this.isActive = true,
    this.isEnable = true,
    this.child,
    this.imageHeight,
    this.imageWidth,
    this.iconSize,
    this.buttonHeight,
    this.buttonWidth,
    this.leftPositioned,
    this.rightPositioned,
    this.topPositioned,
    this.bottomPositioned,
    this.fileImage,
    this.assetImage,
    this.networkImage,
  });
  final VoidCallback? onTap;
  final String? fileImage, assetImage, networkImage;
  final bool? isActive, isEnable;
  final Widget? child;
  final double? imageHeight,
      imageWidth,
      iconSize,
      buttonHeight,
      buttonWidth,
      leftPositioned,
      rightPositioned,
      topPositioned,
      bottomPositioned;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (fileImage == null && assetImage == null && fileImage == null)
          CustomContainer(
              height: imageHeight ?? SizeUtils.getProportionateScreenWidth(175),
              width: imageWidth ?? SizeUtils.getProportionateScreenWidth(175),
              color: Colors.grey.shade200,
              child: Icon(
                Icons.person,
                size: iconSize ?? 50,
                color: Colors.grey,
              ))
        else
          CustomContainer(
            height: imageHeight ?? SizeUtils.getProportionateScreenWidth(175),
            width: imageWidth ?? SizeUtils.getProportionateScreenWidth(175),
            color: Colors.grey.shade200,
            decorationImage: fileImage != null
                ? DecorationImage(
                    image: FileImage(File(fileImage!)),
                    fit: BoxFit.cover,
                  )
                : assetImage != null
                    ? DecorationImage(
                        image: AssetImage(assetImage!),
                        fit: BoxFit.cover,
                      )
                    : DecorationImage(
                        image: NetworkImage(networkImage!),
                        fit: BoxFit.cover,
                      ),
          ),
        Positioned(
          top: topPositioned ?? 120,
          left: leftPositioned ?? 120,
          right: rightPositioned,
          bottom: bottomPositioned,
          child: GestureDetector(onTap: isEnable! ? onTap : null, child: child),
        ),
      ],
    );
  }
}
