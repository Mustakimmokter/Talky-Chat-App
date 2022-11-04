import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class BackAndCamera extends StatelessWidget {
  const BackAndCamera({super.key, required this.back, required this.camera});
  final VoidCallback back, camera;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomRoundedBtn(
              onTap: back,
              color: Colors.white.withOpacity(.5),
              iconColor: Colors.white,
            ),
            const SizedBox(width: 05),
            const CustomTextOne(
              text: 'Back',
              textColor: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        CustomRoundedBtn(
          onTap: camera,
          icon: Icons.flip_camera_android,
          color: Colors.white.withOpacity(.5),
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
