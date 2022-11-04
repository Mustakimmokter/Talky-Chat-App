import 'package:flutter/material.dart';

class ProviderOne extends ChangeNotifier {
  String _chatCall = 'chat';
  String _search = 'inVisible';

  String get chatCall => _chatCall;
  String get search => _search;

  void getChatCall(String value) {
    _chatCall = value;
    notifyListeners();
  }

  void getSearch(String value) {
    _search = value;
    notifyListeners();
  }
}
