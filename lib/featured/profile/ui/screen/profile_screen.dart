import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/profile/ui/component/index.dart';
import 'package:takky/featured/profile/ui/provider/profile_update.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final TextEditingController nameCTRL = TextEditingController();
  final TextEditingController describeCTRL = TextEditingController();

  //final String image = 'assets/images/2.png';

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: screenTopPadding,
          left: screenLeftPadding,
          right: screenRightPadding,
          bottom: screenBottomPadding,
        ),
        child: SizedBox(
          height: SizeUtils.screenHeight,
          child: Stack(
            children: [
              // Header
              Row(
                children: [
                  CustomBackBtn(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: SizeUtils.screenWidth * .2,
                  ),
                  const CustomTextOne(
                    text: 'Profile',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              // Information
              Positioned(
                top: SizeUtils.getProportionateScreenHeight(72),
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    // Profile
                    Consumer<ProfileUpdate>(
                      builder: (context, profileUpdate, child) {
                        return ProfilePic(
                          onTap: profileUpdate.getImage,
                          image: profileUpdate.image,
                        );
                      },
                    ),
                    SizedBox(
                      height: SizeUtils.getProportionateScreenHeight(50),
                    ),
                    // Name and describe field
                    NameAndDescribeField(
                      nameCTRL: nameCTRL,
                      describeCTRL: describeCTRL,
                      nameOnChange: (value) {},
                      describeOnChange: (value) {},
                    ),
                    const SizedBox(height: 15),
                    // Status
                    Consumer<ProfileUpdate>(
                      builder: (context, profileUpdate, child) {
                        return StatusBar(
                          status: profileUpdate.statusList,
                          statusValue: profileUpdate.status,
                          onChange: (statusValue) {
                            profileUpdate.getStatus(statusValue!);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              // Footer
              Positioned(
                top: SizeUtils.getProportionateScreenHeight(600),
                left: 0,
                right: 0,
                child: CustomBtn(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  text: 'Complete',
                  borderRadius: 08,
                  backgroundColor: primaryBrand,
                  textColor: Colors.white,
                  height: SizeUtils.getProportionateScreenHeight(55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
