import 'dart:math';

import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class FilesList extends StatelessWidget {
  FilesList({super.key});

  final List<String> images = [
    'assets/images/sudipto.jpg',
    'assets/images/nayeem_bhai.jpg',
    'assets/images/2.png',
    'assets/images/nayeem_bhai.jpg',
    'assets/images/sudipto.jpg',
    'assets/images/2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 08,
        itemBuilder: (context, index) {
          return CustomContainer(
            radius: 10,
            color: Colors.grey,
            decorationImage: DecorationImage(
              image: AssetImage(
                images[Random().nextInt(6)],
              ),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
