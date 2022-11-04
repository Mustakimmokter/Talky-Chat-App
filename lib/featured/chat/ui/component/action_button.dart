import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.camera,
    required this.attach,
    required this.record,
  });

  final VoidCallback camera, attach, record;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _actionButton(
          onTap: attach,
          iconData: Icons.attach_file,
        ),
        const SizedBox(height: 10),
        _actionButton(
          iconData: Icons.camera_alt_outlined,
          onTap: camera,
        ),
        const SizedBox(height: 10),
        _actionButton(
          iconData: Icons.keyboard_voice,
          onTap: record,
        ),
      ],
    );
  }

  Widget _actionButton({
    required VoidCallback onTap,
    required IconData iconData,
  }) {
    return CustomRoundedBtn(
      size: 50,
      shadowColor: Colors.grey.shade400,
      isShadow: true,
      shadowSize: 10,
      onTap: onTap,
      color: Colors.white,
      // elevation: 6,
      iconColor: primaryBrand,
      icon: iconData,
      iconSize: 25,
    );
  }
}
