import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:takky/featured/otp/ui/component/index.dart';
import 'package:takky/featured/profile/ui/component/index.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget with CodeAutoFill {
  OtpScreen({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;
  final phnCTRL = TextEditingController();
  final bool hasER = false;
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: whiteBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: screenTopPadding,
          left: screenLeftPadding,
          right: screenRightPadding,
          bottom: screenBottomPadding,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: SizeUtils.screenHeight,
          ),
          child: Stack(
            children: [
              CustomBackBtn(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              // Header
              const Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 60,
                child: Header(text: 'Enter the 4 digit codes we sent to you'),
              ),
              // Otp and sign in button
              Padding(
                padding: EdgeInsets.only(
                    top: SizeUtils.getProportionateScreenHeight(220)),
                child: SizedBox(
                  height: SizeUtils.getProportionateScreenHeight(350),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform(
                        transform: Matrix4.translationValues(0, -20, 0),
                        child: Column(
                          children: [
                            OtpField(
                              controller: phnCTRL,
                              onChanged: (value) {},
                              hasError: hasER,
                              onCompleted: (value) {},
                            ),
                          ],
                        ),
                      ),
                      // Sign in button
                      CustomBtn(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        text: 'Sign in',
                        backgroundColor: primaryBrand,
                      ),
                    ],
                  ),
                ),
              ),
              // Footer
              Positioned(
                top: SizeUtils.getProportionateScreenHeight(620),
                left: 0,
                right: 0,
                child: Footer(
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void codeUpdated() {
    // TODO: implement codeUpdated
  }
}
