import 'package:flutter/material.dart';

class CallChatFilesProvider extends ChangeNotifier {
  String _value = 'chat';

  String get value => _value;

  void getCallChatValue(String value) {
    _value = value;
    notifyListeners();
  }
}
