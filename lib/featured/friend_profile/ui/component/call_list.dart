import 'package:flutter/material.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CallList extends StatelessWidget {
  const CallList({
    super.key,
    required this.onTap,
    required this.length,
    required this.dateTime,
    required this.callStatus,
  });
  final String dateTime;
  final VoidCallback onTap;
  final int length;
  final List<String> callStatus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(length, _chatCallList),
      ),
    );
  }

  Widget _chatCallList(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      size: 27,
                      color: callStatus[index] == 'Missed call'
                          ? Colors.red
                          : Colors.green,
                    ),
                    const SizedBox(width: 20),
                    CustomTextOne(
                      text: callStatus[index],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                CustomTextOne(
                  text: dateTime,
                  fontSize: 14,
                  textColor: Colors.black54,
                ),
              ],
            ),
          ),
          Divider(
            height: 40,
            color: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }
}
