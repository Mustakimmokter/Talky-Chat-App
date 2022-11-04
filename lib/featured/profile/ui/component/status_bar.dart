import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    this.status,
    this.statusValue,
    this.onChange,
  });

  final List<String>? status;
  final String? statusValue;
  final Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return CustomContainer(
      width: double.maxFinite,
      height: SizeUtils.getProportionateScreenHeight(55),
      padding: EdgeInsets.symmetric(
        horizontal: SizeUtils.getProportionateScreenWidth(18),
      ),
      radius: 08,
      alignment: Alignment.centerLeft,
      borderWidth: 1,
      borderColor: Colors.black54,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Line
          Row(
            children: [
              CustomContainer(
                color: statusValue == 'Available' ? primarySuccess : black40,
                height: 16,
                width: 16,
              ),
              SizedBox(
                width: SizeUtils.getProportionateScreenWidth(18),
              ),
              CustomTextOne(
                text: statusValue!,
              ),
            ],
          ),
          Row(
            children: [
              CustomContainer(
                height: SizeUtils.getProportionateScreenHeight(45),
                width: 1.3,
                color: Colors.black54,
              ),
              const SizedBox(width: 16),
              DropdownButton<String>(
                isDense: true,
                enableFeedback: true,
                items: List.generate(
                  status!.length,
                  (index) => DropdownMenuItem(
                    value: status![index],
                    child: Text(
                      status![index],
                    ),
                  ),
                ),
                hint: const Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: CustomTextOne(
                    text: 'Status',
                    textColor: Colors.grey,
                  ),
                ),
                // focusNode: FocusNode(
                //   descendantsAreTraversable: false,
                //   descendantsAreFocusable: false,
                //   // skipTraversal: ,
                //   canRequestFocus: false,
                // ),
                onChanged: onChange,
                icon: const Icon(Icons.keyboard_arrow_down),
                borderRadius: BorderRadius.circular(08),
                iconSize: 28,
                underline: const SizedBox(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
