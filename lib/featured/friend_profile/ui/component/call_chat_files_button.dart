import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CallChatFiles extends StatelessWidget {
  const CallChatFiles({
    super.key,
    required this.value,
    required this.call,
    required this.chat,
    required this.files,
  });
  final String value;
  final VoidCallback call, chat, files;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 22,
            child: Container(
              color: Colors.grey.shade200,
              width: double.maxFinite,
              height: 1.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _listButton(
                text: 'Chat',
                value: value == 'chat' ? primaryBrand : Colors.grey.shade200,
                onTap: chat,
              ),
              _listButton(
                text: 'Call',
                value: value == 'call' ? primaryBrand : Colors.grey.shade200,
                onTap: call,
              ),
              _listButton(
                text: 'Files',
                value: value == 'files' ? primaryBrand : Colors.grey.shade200,
                onTap: files,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _listButton({
    required String text,
    required VoidCallback onTap,
    required Color value,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              CustomTextOne(text: text),
              const SizedBox(height: 05),
              Container(
                height: 1.5,
                width: 45,
                color: value,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
