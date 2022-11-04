import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/chat/provider/message_provider.dart';
import 'package:takky/featured/chat/ui/component/index.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  String message = '';
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: SizeUtils.getProportionateScreenHeight(60),
          left: SizeUtils.getProportionateScreenWidth(20),
          right: SizeUtils.getProportionateScreenWidth(20),
          bottom: SizeUtils.getProportionateScreenWidth(20),
        ),
        child: SizedBox(
          height: SizeUtils.screenHeight,
          child: Stack(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackBtn(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const CustomTextOne(
                    text: 'Nayeem Murshed',
                    fontWeight: FontWeight.w600,
                  ),
                  ProfilePicContainer(
                    imageWidth: SizeUtils.getProportionateScreenHeight(50),
                    imageHeight: SizeUtils.getProportionateScreenHeight(50),
                    assetImage: 'assets/images/2.png',
                    iconSize: 20,
                    isEnable: false,
                    leftPositioned: 34,
                    topPositioned: 34,
                    bottomPositioned: 0,
                    rightPositioned: 0,
                    child: const CustomContainer(
                      height: 20,
                      width: 20,
                      color: primarySuccess,
                      borderColor: Colors.white,
                      borderWidth: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Message Field, Text Field and Action button
              Positioned(
                left: 0,
                right: 0,
                top: 80,
                bottom: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: SizeUtils.screenWidth,
                        child: Consumer<MessageProvider>(
                          builder: (context, messageProvider, child) {
                            return messageProvider.messages.isEmpty
                                ? Center(
                                    child: CustomTextOne(
                                      text: 'Start your chat!',
                                      fontSize: 25,
                                      textColor: Colors.grey.shade300,
                                    ),
                                  )
                                : SingleChildScrollView(
                                    reverse: true,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: MassageField(
                                        messages: messageProvider.messages,
                                      ),
                                    ),
                                  );
                          },
                        ),
                      ),
                    ),
                    // Message field and More action
                    SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: Row(
                        children: [
                          // Message field
                          Expanded(
                            child: CustomTextField(
                              controller: controller,
                              onChange: (value) {
                                message = value;
                              },
                              contentPadding: EdgeInsets.symmetric(
                                horizontal:
                                    SizeUtils.getProportionateScreenWidth(17),
                                vertical:
                                    SizeUtils.getProportionateScreenHeight(17),
                              ),
                              hintText: 'Message',
                              focusBorderRadius: 08,
                              enabledBorderRadius: 08,
                              suffixIcon: Consumer<MessageProvider>(
                                builder: (context, messageProvider, child) {
                                  return CustomFlatBtn(
                                    onTap: () {
                                      controller.clear();
                                      if (message.isNotEmpty) {
                                        messageProvider.getMessages(message);
                                        message = '';
                                      } else {
                                        print('Write something');
                                      }
                                    },
                                    child: const Icon(
                                      Icons.send,
                                      color: primaryBrand,
                                      size: 25,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          // More action
                          Consumer<MessageProvider>(
                            builder: (context, messageProvider, child) {
                              return CustomRoundedBtn(
                                size: 50,
                                shadowColor: Colors.grey.shade400,
                                shadowSize: 10,
                                isShadow: true,
                                onTap: () {
                                  messageProvider.getActionButton();
                                },
                                color: primaryBrand,
                                // elevation: 6,
                                iconColor: Colors.white,
                                icon: messageProvider.isAction
                                    ? Icons.close
                                    : Icons.add,
                                iconSize: 25,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Action button
              Positioned(
                right: 0,
                top: 0,
                bottom: SizeUtils.getProportionateScreenHeight(80),
                child: Consumer<MessageProvider>(
                  builder: (context, messageProvider, child) {
                    return messageProvider.isAction
                        ? ActionButton(
                            attach: () {},
                            camera: () {},
                            record: () {},
                          )
                        : const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
