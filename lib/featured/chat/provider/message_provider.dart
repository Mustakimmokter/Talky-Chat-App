import 'package:flutter/material.dart';

class MessageProvider extends ChangeNotifier {
  final List<String> _messages = [];
  late bool _isAction = false;

  List<String> get messages => _messages;
  bool get isAction => _isAction;

  void getMessages(String value) {
    _messages.add(value);
    notifyListeners();
  }

  void getActionButton() {
    _isAction = !_isAction;
    notifyListeners();
  }
}
