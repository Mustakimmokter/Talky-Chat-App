import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class GroupProfilePic extends StatelessWidget {
  GroupProfilePic({super.key, required this.name});

  final List<String> name;
  late int startCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        name.length > 3 ? 2 : 1,
        (index) {
          return Expanded(
            child: Column(
              children: [
                Expanded(
                  child: CustomContainer(
                    padding: const EdgeInsets.only(bottom: 20),
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
                      text: name[index],
                      textColor: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                for (int _startCount = 0;
                    _startCount < (index > 4 ? index / 2 : 1);
                    _startCount++)
                  Expanded(
                    child: CustomContainer(
                      padding: const EdgeInsets.only(top: 20),
                      alignment: Alignment.topCenter,
                      width: SizeUtils.screenWidth,
                      height: SizeUtils.screenHeight,
                      radius: 0,
                      color: Colors.grey.shade300,
                      decorationImage: const DecorationImage(
                        image: AssetImage('assets/images/2.png'),
                        fit: BoxFit.cover,
                      ),
                      child: CustomTextOne(
                        text: name[index + 2],
                        textColor: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
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
