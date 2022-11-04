import 'package:flutter/material.dart';

class CallProvider extends ChangeNotifier {
  bool _speaker = false;
  bool _mute = false;

  bool get speaker => _speaker;
  bool get mute => _mute;

  void getSpeaker() {
    _speaker = !_speaker;
    notifyListeners();
  }

  void getMute() {
    _mute = !mute;
    notifyListeners();
  }
}
