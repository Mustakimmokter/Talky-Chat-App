import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/call/group_call/ui/component/index.dart';
import 'package:takky/featured/call/group_call/ui/provider/group_call_provider.dart';
import 'package:takky/shared/model/image_model.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({super.key});

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
              groupCall: ImageModel.getGroupCallList(),
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
            if (ImageModel.getGroupCallList().length.isOdd)
              Positioned(
                bottom: 140,
                left: 190,
                child: CustomRoundedBtn(
                  icon: Icons.add,
                  color: Colors.white.withOpacity(.6),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
