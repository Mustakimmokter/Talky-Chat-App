import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CallChatBtn extends StatelessWidget {
  const CallChatBtn({
    super.key,
    this.isTrueFalse,
    required this.onTapChat,
    required this.onTapCall,
    required this.name,
  });

  final VoidCallback onTapChat, onTapCall;
  final bool? isTrueFalse;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFlatBtn(
          onTap: onTapChat,
          child: name == 'chat'
              ? _buttonContainer(text: 'Chat')
              : _getFlatText(text: 'Chat'),
        ),
        CustomFlatBtn(
          onTap: onTapCall,
          child: name == 'call'
              ? _buttonContainer(text: 'Call')
              : _getFlatText(text: 'Call'),
        ),
      ],
    );
  }

  Widget _buttonContainer({String? text}) {
    return CustomContainer(
      alignment: Alignment.center,
      radius: 07,
      height: SizeUtils.getProportionateScreenHeight(40),
      width: SizeUtils.screenWidth / 2.4,
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Colors.grey.shade400,
          offset: const Offset(.5, .5),
        ),
      ],
      child: CustomTextOne(text: text!),
    );
  }

  Widget _getFlatText({String? text}) {
    return SizedBox(
      height: SizeUtils.getProportionateScreenHeight(40),
      width: SizeUtils.screenWidth / 2.4,
      child: Center(
        child: CustomTextOne(
          text: text!,
          textColor: Colors.grey,
        ),
      ),
    );
  }
}
