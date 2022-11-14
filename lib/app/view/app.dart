import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:takky/featured/auth/signin/signing_with_google/ui/provider/signing_provider.dart';
import 'package:takky/featured/call/group_call/ui/provider/group_call_provider.dart';
import 'package:takky/featured/call/sigle_call/ui/provider/call_provider.dart';
import 'package:takky/featured/chat/provider/message_provider.dart';
import 'package:takky/featured/friend_profile/provider/index.dart';
import 'package:takky/featured/home/ui/provider/provider_one.dart';
import 'package:takky/featured/profile/ui/provider/profile_update.dart';
import 'package:takky/l10n/l10n.dart';
import 'package:takky/shared/infrastructure/route.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProfileUpdate>(
          create: (context) => ProfileUpdate(),
        ),
        ChangeNotifierProvider<ProviderOne>(
          create: (context) => ProviderOne(),
        ),
        ChangeNotifierProvider<CallProvider>(
          create: (context) => CallProvider(),
        ),
        ChangeNotifierProvider<GroupCallProvider>(
          create: (context) => GroupCallProvider(),
        ),
        ChangeNotifierProvider<MessageProvider>(
          create: (context) {
            return MessageProvider();
          },
        ),
        ChangeNotifierProvider<CallChatFilesProvider>(
          create: (context) {
            return CallChatFilesProvider();
          },
        ),
        ChangeNotifierProvider<SigningProvider>(
          create: (context) => SigningProvider(),
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFF13B9FF),
            ),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          // home: GroupCallScreen(),
          initialRoute: '/smd',
          onGenerateRoute: AppRoute.onGenerateRoute,
        );
      },
    );
  }
}
