import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:takky/featured/auth/signin/signing_with_phn/ui/component/index.dart';
import 'package:takky/featured/profile/ui/component/footer.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class SignInWithPhone extends StatelessWidget {
  SignInWithPhone({super.key});
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
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
              // Back button
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
                child: Header(
                  text: 'Continue with phone number',
                ),
              ),
              // Body
              Padding(
                padding: EdgeInsets.only(
                    top: SizeUtils.getProportionateScreenHeight(200)),
                child: SizedBox(
                  height: SizeUtils.getProportionateScreenHeight(372),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Country code and PhoneNumber
                      CountryCodeContainer(
                        onChange: (CountryCode? country) async {
                          print(country);
                        },
                      ),
                      CustomBtn(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/otp',
                            arguments: {'otp': phoneController.text},
                          );
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
}
