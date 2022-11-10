import 'package:flutter/material.dart';
import 'package:takky/shared/model/image_model.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class GroupProfilePic extends StatelessWidget {
  GroupProfilePic({super.key, required this.name});

  final List<String> name;
  late int startCount = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(ImageModel.getGroupCallList().length, (index) {
        return CustomContainer(
          padding: EdgeInsets.only(
              top: ImageModel.getGroupCallList().length > 1 ? 20 : 0,
              bottom: index > 1 ? 0 : 20),
          alignment: index > 1 ? Alignment.topCenter : Alignment.bottomCenter,
          width: index == 0 ? SizeUtils.screenWidth : SizeUtils.screenWidth / 2,
          height:
              index == 0 ? SizeUtils.screenHeight : SizeUtils.screenHeight / 2,
          radius: 0,
          color: Colors.grey.shade300,
          decorationImage: DecorationImage(
            image: AssetImage(ImageModel.getGroupCallList()[index].image),
            fit: BoxFit.cover,
          ),
          child: CustomTextOne(
            text: name[index],
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
