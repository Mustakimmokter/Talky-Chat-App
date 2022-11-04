import 'package:flutter/material.dart';
import 'package:takky/featured/auth/signin/signin_with_smd/ui/components/index.dart';
import 'package:takky/featured/profile/ui/component/footer.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/talky_logo.dart';

class SignInSocialMedia extends StatelessWidget {
  const SignInSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: blackOpacity,
      body: Padding(
        padding: EdgeInsets.only(
          top: SizeUtils.topPadding,
          left: screenLeftPadding,
          right: screenRightPadding,
          bottom: screenBottomPadding,
        ),
        child: Column(
          children: [
            // Header
            SizedBox(
              height: SizeUtils.getProportionateScreenHeight(200),
              child: const TalkyLogo(),
            ),
            // All Signup Button
            SignInButton(
              googleTap: () {
                Navigator.pushNamed(context, '/google');
              },
              facebookTap: () {
                Navigator.pushNamed(context, '/home');
              },
              appleTap: () {
                Navigator.pushNamed(context, '/home');
              },
              phoneTap: () {
                Navigator.pushNamed(context, '/phone');
              },
            ),
            // Footer
            Expanded(
              child: Footer(
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
