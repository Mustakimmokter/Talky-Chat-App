import 'package:flutter/material.dart';

class SigningProvider extends ChangeNotifier {
  bool _singingBtn = false;

  bool get singingBtn => _singingBtn;

  void getSingingBtn(bool value) {
    _singingBtn = value;
    notifyListeners();
  }
}
