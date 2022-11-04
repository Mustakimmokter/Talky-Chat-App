import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class MassageField extends StatelessWidget {
  const MassageField({super.key, required this.messages});
  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(messages.isEmpty ? 0 : messages.length, (index) {
        return Align(
          alignment:
              index.isEven ? Alignment.centerLeft : Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                alignment:
                    index.isEven ? Alignment.centerLeft : Alignment.centerRight,
                height: 40,
                width: 120,
                radius: 10,
                color: index.isEven ? Colors.grey : primaryBrand,
                child: CustomTextOne(
                  text: messages[index],
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextOne(
                text: TimeOfDay.now().toString(),
                textColor: Colors.grey,
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}
