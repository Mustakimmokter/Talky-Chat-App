import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:takky/shared/widgets_one/index.dart';

class OtpTimer extends StatelessWidget {
  const OtpTimer({
    Key? key,
    required this.seconds,
    this.timeOnEnd,
  }) : super(key: key);
  final int seconds;
  final void Function()? timeOnEnd;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime:
          DateTime.now().add(Duration(seconds: seconds)).millisecondsSinceEpoch,
      onEnd: timeOnEnd,
      widgetBuilder: (_, CurrentRemainingTime? time) {
        return const CustomTextOne(
          text: 'null',
          fontSize: 14,
        );
      },
    );
  }
}
