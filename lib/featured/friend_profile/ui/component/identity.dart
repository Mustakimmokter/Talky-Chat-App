import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class Identity extends StatelessWidget {
  const Identity({super.key, required this.name, required this.profession});
  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextOne(
          text: name,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        const SizedBox(height: 05),
        CustomTextOne(
          text: profession,
        ),
      ],
    );
  }
}
