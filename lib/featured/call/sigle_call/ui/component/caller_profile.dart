import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CallerProfile extends StatelessWidget {
  const CallerProfile({super.key, required this.image, required this.name});
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicContainer(
          topPositioned: 0,
          leftPositioned: 0,
          bottomPositioned: 0,
          rightPositioned: 0,
          isActive: false,
          assetImage: image,
        ),
        const SizedBox(height: 16),
        CustomTextOne(
          text: name,
          textColor: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 15),
        const CustomTextOne(
          text: 'Calling...',
          textColor: Colors.white,
        ),
      ],
    );
  }
}
