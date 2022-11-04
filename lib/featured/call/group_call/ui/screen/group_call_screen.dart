import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/call/group_call/ui/component/index.dart';
import 'package:takky/featured/call/group_call/ui/provider/group_call_provider.dart';
import 'package:takky/shared/utils/index.dart';

class GroupCallScreen extends StatelessWidget {
  GroupCallScreen({super.key});

  final List<String> name = ['Sudipto', 'Nayeem', 'Mokter', 'Saddam'];

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      body: SizedBox(
        height: SizeUtils.screenHeight,
        width: SizeUtils.screenWidth,
        child: Stack(
          children: [
            // Group profile pic,
            GroupProfilePic(
              name: name,
            ),
            // Header and Footer
            Positioned(
              top: SizeUtils.getProportionateScreenHeight(60),
              bottom: SizeUtils.getProportionateScreenHeight(100),
              left: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back and Camera
                  BackAndCamera(
                    back: () {
                      Navigator.pop(context);
                    },
                    camera: () {
                      print('flip camera');
                    },
                  ),
                  // Cancel, Speaker and Mute
                  Consumer<GroupCallProvider>(
                    builder: (context, groupCallProvider, child) {
                      return CancelSpeakerMute(
                        isSpeaker: groupCallProvider.speaker,
                        isMute: groupCallProvider.mute,
                        speaker: () {
                          groupCallProvider.getSpeaker();
                        },
                        cancel: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/home', (route) => false);
                        },
                        mute: () {
                          groupCallProvider.getMute();
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
    );
  }
}

/*

Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: SizeUtils.screenHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Who are you calling?
                    Column(
                      children: const [
                        SizedBox(height: 16),
                        CustomTextOne(
                          text: 'Sudipto Saha',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    // Cancel, speaker and mute
                  ],
                ),
              ),
            ),


 */
