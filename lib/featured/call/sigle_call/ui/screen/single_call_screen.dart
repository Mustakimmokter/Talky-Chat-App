import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/call/sigle_call/ui/component/index.dart';
import 'package:takky/featured/call/sigle_call/ui/provider/call_provider.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class SingleCallScreen extends StatelessWidget {
  const SingleCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      body: CustomContainer(
        radius: 0,
        color: Colors.grey,
        height: SizeUtils.screenHeight,
        width: SizeUtils.screenWidth,
        decorationImage: const DecorationImage(
          image: AssetImage('assets/images/2.png'),
          fit: BoxFit.cover,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: screenTopPadding,
            left: screenLeftPadding,
            right: screenRightPadding,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // back
                    Back(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    // Group call
                    CustomRoundedBtn(
                      onTap: () {
                        Navigator.pushNamed(context, '/groupCall');
                      },
                      icon: Icons.add,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeUtils.screenHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Who are you calling?
                      const CallerProfile(
                        name: 'Sudipto Saha',
                        image: 'assets/images/sudipto.jpg',
                      ),
                      // Cancel, speaker and mute
                      Consumer<CallProvider>(
                        builder: (context, callProvider, child) {
                          return CancelSpeakerMute(
                            isSpeaker: callProvider.speaker,
                            isMute: callProvider.mute,
                            speaker: () {
                              callProvider.getSpeaker();
                            },
                            cancel: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            mute: () {
                              callProvider.getMute();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
