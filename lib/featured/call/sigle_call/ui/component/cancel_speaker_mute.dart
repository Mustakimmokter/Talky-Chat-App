import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CancelSpeakerMute extends StatelessWidget {
  const CancelSpeakerMute({
    super.key,
    required this.cancel,
    required this.speaker,
    required this.mute,
    this.isCancel = false,
    this.isSpeaker = false,
    this.isMute = false,
  });
  final VoidCallback cancel, speaker, mute;
  final bool? isCancel, isSpeaker, isMute;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Speaker
        CustomRoundedBtn(
          size: 50,
          onTap: speaker,
          color: isSpeaker! ? Colors.grey : Colors.grey.shade400,
          // elevation: 6,
          iconColor: Colors.white,
          icon: isSpeaker! ? Icons.volume_off : Icons.volume_down,
          iconSize: 25,
        ),
        // Cancel
        CustomRoundedBtn(
          size: 70,
          onTap: cancel,
          color: Colors.redAccent.withOpacity(.70),
          // elevation: 6,
          iconColor: Colors.white,
          icon: Icons.call,
          iconSize: 35,
        ),
        // Mute
        CustomRoundedBtn(
          size: 50,
          onTap: mute,
          color: isMute! ? Colors.grey : Colors.grey.shade400,
          // elevation: 6,
          iconColor: Colors.white,
          icon: isMute! ? Icons.keyboard_voice : Icons.voice_over_off,
          iconSize: 25,
        ),
      ],
    );
  }
}
