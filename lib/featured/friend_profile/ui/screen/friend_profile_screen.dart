import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/friend_profile/provider/index.dart';
import 'package:takky/featured/friend_profile/ui/component/index.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class FriendProfile extends StatelessWidget {
  FriendProfile({super.key});

  final List<String> callStatus = [
    'Missed call',
    '35mins',
    'Missed call',
    '30mins',
    '1h 3mins',
    'Missed call',
    '22mins',
  ];

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SizedBox(
        height: SizeUtils.screenHeight,
        child: Column(
          children: [
            // Back button
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: CustomBackBtn(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 30),
            // Profile
            const ProfilePicContainer(
              topPositioned: 0,
              leftPositioned: 0,
              rightPositioned: 0,
              bottomPositioned: 0,
              isActive: false,
              isEnable: false,
              assetImage: 'assets/images/sudipto.jpg',
            ),
            const SizedBox(height: 20),
            const Identity(
              name: 'Sudipto Saha',
              profession: 'Software Engineer',
            ),
            const SizedBox(height: 35),
            // Call, Chat and Files button
            Consumer<CallChatFilesProvider>(
              builder: (context, callChatFilesProvider, child) {
                return CallChatFiles(
                  value: callChatFilesProvider.value,
                  chat: () {
                    callChatFilesProvider.getCallChatValue('chat');
                  },
                  call: () {
                    callChatFilesProvider.getCallChatValue('call');
                  },
                  files: () {
                    callChatFilesProvider.getCallChatValue('files');
                  },
                );
              },
            ),
            Expanded(
              child: Consumer<CallChatFilesProvider>(
                builder: (context, callChatFilesProvider, child) {
                  return callChatFilesProvider.value == 'chat'
                      ? ChatList(
                          length: 8,
                          dateTime: '5h ago',
                          status: 'Hey bro',
                          name: 'Mustakim',
                          onTap: () {
                            print('Chat List');
                          },
                          image: 'assets/images/2.png',
                          isAssetImage: true,
                        )
                      : callChatFilesProvider.value == 'call'
                          ? CallList(
                              length: callStatus.length,
                              dateTime: '19/10/2022',
                              callStatus: callStatus,
                              onTap: () {
                                print('Call List');
                              },
                            )
                          : FilesList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
