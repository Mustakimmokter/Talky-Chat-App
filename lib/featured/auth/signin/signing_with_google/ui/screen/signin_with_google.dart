import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/auth/signin/signing_with_google/ui/component/index.dart';
import 'package:takky/featured/auth/signin/signing_with_google/ui/provider/signing_provider.dart';
import 'package:takky/featured/profile/ui/component/footer.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class SignInWithGoogle extends StatelessWidget {
  SignInWithGoogle({super.key});
  final TextEditingController gmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
              Consumer<SigningProvider>(
                builder: (context, signingProvider, child) {
                  return CustomBackBtn(
                    onTap: () {
                      Navigator.pop(context);
                      signingProvider.getSingingBtn(false);
                    },
                  );
                },
              ),
              // Header
              const Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 60,
                child: Header(
                  text: 'Sign in with google',
                ),
              ),
              // Body
              Consumer<SigningProvider>(
                builder: (context, signingProvider, child) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: SizeUtils.getProportionateScreenHeight(200)),
                    child: SizedBox(
                      height: SizeUtils.getProportionateScreenHeight(
                          signingProvider.singingBtn ? 230 : 400),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              // Gmail and Password Field
                              CustomTextField(
                                controller: gmailController,
                                onTap: () {
                                  signingProvider.getSingingBtn(true);
                                },
                                onSubmitted: (value) {
                                  signingProvider.getSingingBtn(false);
                                },
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                hintText: 'Enter your gmail address',
                                focusBorderRadius: 08,
                                enabledBorderRadius: 08,
                              ),
                              const SizedBox(height: 16),
                              // Password
                              CustomTextField(
                                controller: passwordController,
                                onTap: () {
                                  signingProvider.getSingingBtn(true);
                                },
                                onSubmitted: (value) {
                                  signingProvider.getSingingBtn(false);
                                },
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                hintText: 'Enter your password',
                                focusBorderRadius: 08,
                                enabledBorderRadius: 08,
                              ),
                              const SizedBox(height: 08),
                              // Forger password
                              ForgetPassword(
                                onTap: () {},
                              ),
                            ],
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
                  );
                },
              ),
              // Footer
              Positioned(
                top: SizeUtils.getProportionateScreenHeight(620),
                left: 0,
                right: 0,
                bottom: 0,
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
