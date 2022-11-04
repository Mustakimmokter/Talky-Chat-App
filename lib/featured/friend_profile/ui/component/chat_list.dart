import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.name,
    required this.status,
    required this.onTap,
    this.image,
    required this.length,
    required this.dateTime,
    this.isFileImage,
    this.isAssetImage,
    this.isNetworkImage,
  });
  final String name, status, dateTime;
  final String? image;
  final VoidCallback onTap;
  final int length;
  final bool? isFileImage, isAssetImage, isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: List.generate(length, (index) {
            return _chatCallList();
          }),
        ),
      ),
    );
  }

  Widget _chatCallList() {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              ProfilePicContainer(
                assetImage: isAssetImage != null ? image : null,
                fileImage: isFileImage != null ? image : null,
                networkImage: isNetworkImage != null ? image : null,
                imageWidth: 50,
                imageHeight: 50,
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
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextOne(
                                text: name,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          const SizedBox(height: 05),
                          CustomTextOne(
                            text: status,
                            fontSize: 14,
                            textColor: Colors.grey,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: CustomTextOne(
                              text: dateTime,
                              fontSize: 14,
                              textColor: Colors.grey,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 28,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
