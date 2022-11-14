import 'package:flutter/material.dart';
import 'package:takky/shared/model/inedx.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class GroupProfilePic extends StatelessWidget {
  const GroupProfilePic({super.key, required this.groupCall});

  final List<GroupCallModel> groupCall;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
          groupCall.length.isOdd && groupCall.length > 3
              ? groupCall.length - 1
              : groupCall.length, (index) {
        return CustomContainer(
          padding: const EdgeInsets.only(
            // top: groupCall.length > 1 ? 20 : 0,
            bottom: 20,
          ),
          alignment: Alignment.bottomCenter,
          width: groupCall.length < 2
              ? SizeUtils.screenWidth
              : groupCall.length == 3
                  ? SizeUtils.screenWidth
                  : SizeUtils.screenWidth / 2,
          height: groupCall.length == 3
              ? SizeUtils.screenWidth / 1.42
              : groupCall.length - 1 < 5
                  ? SizeUtils.screenHeight / 2
                  : groupCall.length - 1 < 7
                      ? SizeUtils.screenHeight / 3
                      : groupCall.length - 1 < 9
                          ? SizeUtils.screenHeight / 4
                          : SizeUtils.screenHeight / 4,
          radius: 0,
          color: Colors.grey.shade300,
          decorationImage: DecorationImage(
            image: AssetImage(groupCall[index].image),
            fit: BoxFit.cover,
          ),
          child: CustomTextOne(
            text: groupCall[index].name,
            textColor: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        );
      }),
    );
  }
}

/*


Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: SizeUtils.screenWidth,
                  height: SizeUtils.screenHeight,
                  radius: 0,
                  color: Colors.grey.shade300,
                  decorationImage: const DecorationImage(
                    image: AssetImage('assets/images/2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (_count > 3 && _count.isOdd)
                Expanded(
                  child: CustomContainer(
                    width: SizeUtils.screenWidth,
                    height: SizeUtils.screenHeight,
                    radius: 0,
                    color: Colors.grey.shade300,
                    decorationImage: const DecorationImage(
                      image: AssetImage('assets/images/2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              else
                Column(),
            ],
          ),
 */

/*


Column(
      children: List.generate(
          _count > 3 && _count.isOdd
              ? (_count ~/ 2) + 1
              : _count > 3
                  ? _count ~/ 2
                  : _count, (index) {
        return Expanded(
          child: Row(
            children: List.generate(_count > 3 ? 2 : 1, (index) {
              return Expanded(
                child: Column(
                  children: List.generate(1, (index) {
                    return Expanded(
                      child: CustomContainer(
                        width: SizeUtils.screenWidth,
                        height: SizeUtils.screenHeight,
                        radius: 0,
                        color: Colors.grey.shade300,
                        decorationImage: const DecorationImage(
                          image: AssetImage('assets/images/2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                ),
              );
            }),
          ),
        );
      }),
    )
 */

/*

Column(
      children: [
        for (int _startCount = 0;
            _startCount < (count > 3 ? count / 2 : count);
            _startCount++)
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(
                    alignment: Alignment.bottomCenter,
                    width: SizeUtils.screenWidth,
                    height: SizeUtils.screenHeight,
                    radius: 0,
                    color: Colors.grey.shade300,
                    decorationImage: const DecorationImage(
                      image: AssetImage('assets/images/2.png'),
                      fit: BoxFit.cover,
                    ),
                    child: CustomTextOne(
                      text: 'Sudipto Saha',
                      textColor: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                for (int _startCount = 0;
                    _startCount < (count > 3 ? 1 : 0);
                    _startCount++)
                  Expanded(
                    child: CustomContainer(
                      width: SizeUtils.screenWidth,
                      height: SizeUtils.screenHeight,
                      radius: 0,
                      color: Colors.grey.shade300,
                      decorationImage: const DecorationImage(
                        image: AssetImage('assets/images/2.png'),
                        fit: BoxFit.cover,
                      ),
                      child: CustomTextOne(
                        text: 'Sudipto Saha',
                        textColor: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          )
      ],
    )
*/
