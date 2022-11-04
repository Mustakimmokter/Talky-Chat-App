import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key, this.onTap, this.image});
  final VoidCallback? onTap;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ProfilePicContainer(
      onTap: onTap,
      fileImage: image,
      child: const CustomContainer(
        color: primaryBrand,
        height: 40,
        width: 40,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
