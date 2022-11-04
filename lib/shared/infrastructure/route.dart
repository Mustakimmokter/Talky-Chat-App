import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:takky/featured/auth/signin/signin_with_smd/ui/screen/signin_with_smd.dart';
import 'package:takky/featured/auth/signin/signing_with_google/ui/screen/signin_with_google.dart';
import 'package:takky/featured/auth/signin/signing_with_phn/ui/screen/signin_with_phn.dart';
import 'package:takky/featured/call/group_call/ui/screen/group_call_screen.dart';
import 'package:takky/featured/call/sigle_call/ui/screen/single_call_screen.dart';
import 'package:takky/featured/chat/ui/screen/chat_screen.dart';
import 'package:takky/featured/friend_profile/ui/screen/friend_profile_screen.dart';
import 'package:takky/featured/home/ui/screen/home_screen.dart';
import 'package:takky/featured/otp/ui/screen/otp_screen.dart';
import 'package:takky/featured/profile/ui/screen/profile_screen.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/smd':
        return PageTransition<dynamic>(
          child: const SignInSocialMedia(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/google':
        return PageTransition<dynamic>(
          child: SignInWithGoogle(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/phone':
        return PageTransition<dynamic>(
          child: SignInWithPhone(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/otp':
        final params = settings.arguments! as Map<String, dynamic>;

        return PageTransition<dynamic>(
          child: OtpScreen(phoneNumber: params['otp'] as String),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/profile':
        return PageTransition<dynamic>(
          child: ProfileScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/home':
        return PageTransition<dynamic>(
          child: HomeScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/friendProfile':
        return PageTransition<dynamic>(
          child: FriendProfile(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/chat':
        return PageTransition<dynamic>(
          child: ChatScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/call':
        return PageTransition<dynamic>(
          child: SingleCallScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case '/groupCall':
        return PageTransition<dynamic>(
          child: GroupCallScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      default:
        return PageTransition<dynamic>(
          child: const SignInSocialMedia(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
    }
  }
}
