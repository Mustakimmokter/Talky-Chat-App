import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/home/ui/component/index.dart';
import 'package:takky/featured/home/ui/provider/provider_one.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: SizeUtils.getProportionateScreenHeight(60),
          left: SizeUtils.getProportionateScreenWidth(20),
          right: SizeUtils.getProportionateScreenWidth(20),
        ),
        child: SizedBox(
          height: SizeUtils.screenHeight,
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // My Profile
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: const ProfilePicContainer(
                      imageWidth: 50,
                      assetImage: 'assets/images/2.png',
                      imageHeight: 50,
                      iconSize: 20,
                      isEnable: false,
                      leftPositioned: 34,
                      topPositioned: 34,
                      bottomPositioned: 0,
                      rightPositioned: 0,
                      child: CustomContainer(
                        height: 20,
                        width: 20,
                        color: primarySuccess,
                        borderColor: Colors.white,
                        borderWidth: 2,
                      ),
                    ),
                  ),
                  SizedBox(width: SizeUtils.getProportionateScreenWidth(18)),
                  // Search bar
                  Consumer<ProviderOne>(
                    builder: (context, providerOne, child) {
                      return providerOne.search == 'visible'
                          ? Expanded(
                              child: SizedBox(
                                height:
                                    SizeUtils.getProportionateScreenHeight(35),
                                child: CustomTextField(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  controller: _controller,
                                  isBorder: false,
                                  cursorColor: primaryBrand,
                                  cursorHeight: 16,
                                  enabledBorderRadius: 06,
                                  focusBorderRadius: 06,
                                  autofocus: true,
                                  focusBorderColor: primaryBrand,
                                  hintText: 'Search',
                                  onSubmitted: (value) {
                                    providerOne.getSearch('inVisible');
                                  },
                                  suffixIcon: CustomFlatBtn(
                                    onTap: () {
                                      providerOne.getSearch('inVisible');
                                      _controller.clear();
                                    },
                                    child: const Icon(
                                      Icons.search,
                                      color: primaryBrand,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : providerOne.search == 'inVisible'
                              ? CustomFlatBtn(
                                  onTap: () {
                                    providerOne.getSearch('visible');
                                  },
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.black54,
                                  ),
                                )
                              : SizedBox();
                    },
                  ),
                ],
              ),
              SizedBox(height: SizeUtils.getProportionateScreenHeight(25)),
              // Chat and Call button
              CustomContainer(
                padding: const EdgeInsets.symmetric(horizontal: 07),
                width: double.maxFinite,
                height: SizeUtils.getProportionateScreenHeight(50),
                radius: 08,
                color: Colors.grey.shade200,
                child: Consumer<ProviderOne>(
                  builder: (context, providerOne, child) {
                    return CallChatBtn(
                      name: providerOne.chatCall,
                      onTapChat: () {
                        providerOne.getChatCall('chat');
                      },
                      onTapCall: () {
                        providerOne.getChatCall('call');
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: SizeUtils.getProportionateScreenHeight(25)),
              // Chat and Call List
              Expanded(
                child: Consumer<ProviderOne>(
                  builder: (context, providerOne, child) {
                    return providerOne.chatCall == 'chat'
                        ? CallChatList(
                            length: 16,
                            dateTime: '5h ago',
                            status: 'Hey bro',
                            name: 'Mustakim',
                            friendProfile: () {
                              Navigator.pushNamed(context, '/friendProfile');
                            },
                            chat: () {
                              Navigator.pushNamed(context, '/chat');
                            },
                            image: 'assets/images/2.png',
                            isAssetImage: true,
                          )
                        : CallChatList(
                            length: 20,
                            dateTime: '1d ago',
                            status: 'Missed call',
                            name: 'Sudipto Saha',
                            image: 'assets/images/sudipto.jpg',
                            isAssetImage: true,
                            friendProfile: () {
                              Navigator.pushNamed(context, '/friendProfile');
                            },
                            chat: () {
                              Navigator.pushNamed(context, '/call');
                            },
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryBrand,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
