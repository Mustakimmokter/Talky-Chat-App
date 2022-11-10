import 'dart:math';

import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class FilesList extends StatelessWidget {
  const FilesList({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: List.generate(images.length, (index) {
          return CustomContainer(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            height: SizeUtils.getProportionateScreenWidth(85),
            width: SizeUtils.getProportionateScreenWidth(85),
            radius: 10,
            color: Colors.grey,
            decorationImage: DecorationImage(
              image: AssetImage(
                images[Random().nextInt(6)],
              ),
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }
}
