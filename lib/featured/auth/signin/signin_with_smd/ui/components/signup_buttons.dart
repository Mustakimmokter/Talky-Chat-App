import 'package:flutter/material.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {super.key,
      this.googleTap,
      this.phoneTap,
      this.facebookTap,
      this.appleTap});

  final VoidCallback? googleTap, phoneTap, facebookTap, appleTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Google signup
        _customSignInButton(
          child: Row(
            children: [
              const CustomSvg(svg: 'icons/google.svg', height: 25),
              SizedBox(
                width: SizeUtils.getProportionateScreenWidth(50),
              ),
              const CustomTextOne(text: 'Sign in with google'),
            ],
          ),
          onTap: googleTap,
        ),
        // Facebook signup
        _customSignInButton(
          child: Row(
            children: [
              const CustomSvg(
                svg: 'icons/facebook_02.svg',
                height: 25,
                color: primaryBlue,
              ),
              SizedBox(
                width: SizeUtils.getProportionateScreenWidth(48),
              ),
              const CustomTextOne(text: 'Sign in with FaceBook'),
            ],
          ),
          onTap: facebookTap,
        ),
        // Apple signup
        _customSignInButton(
          child: Row(
            children: [
              const CustomSvg(
                svg: 'icons/apple.svg',
                color: primaryBlackBlue,
                height: 25,
              ),
              SizedBox(
                width: SizeUtils.getProportionateScreenWidth(53),
              ),
              const CustomTextOne(text: 'Sign in with Apple'),
            ],
          ),
          onTap: appleTap,
        ),
        SizedBox(height: SizeUtils.getProportionateScreenHeight(17)),
        // Line
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _customLine(),
            const CustomTextOne(text: 'or'),
            _customLine()
          ],
        ),
        SizedBox(height: SizeUtils.getProportionateScreenHeight(30)),
        // Phone signup
        _customSignInButton(
          child: const Center(
            child: CustomTextOne(text: 'Continue with phone number'),
          ),
          onTap: phoneTap,
        ),
      ],
    );
  }

// Custom Sing Button
  Widget _customSignInButton({Widget? child, VoidCallback? onTap}) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: SizeUtils.getProportionateScreenHeight(14)),
      child: CustomBtn(
        onPressed: onTap,
        backgroundColor: Colors.white,
        elevation: 1,
        borderRadius: 10,
        height: SizeUtils.getProportionateScreenHeight(55),
        child: Padding(
          padding:
              EdgeInsets.only(left: SizeUtils.getProportionateScreenWidth(35)),
          child: child,
        ),
      ),
    );
    // return InkWell(
    //   onTap: onTap,
    //   child: CustomContainer(
    //     height: SizeUtils.getProportionateScreenHeight(60),
    //     width: SizeUtils.getProportionateScreenWidth(double.maxFinite),
    //     radius: 08,
    //     color: Colors.white,
    //     boxShadow: const [
    //       BoxShadow(
    //         color: blackOverlay,
    //         blurRadius: 1,
    //         offset: Offset(1, 1),
    //       ),
    //     ],
    //     padding: EdgeInsets.symmetric(
    //       horizontal: SizeUtils.getProportionateScreenWidth(40),
    //     ),
    //     margin: EdgeInsets.only(
    //       bottom: SizeUtils.getProportionateScreenHeight(14),
    //     ),
    //     child: child,
    //   ),
    // );
  }

  // Custom line
  Widget _customLine() {
    return CustomContainer(
      height: 2,
      color: black80,
      width: SizeUtils.getProportionateScreenWidth(110),
    );
  }
}
