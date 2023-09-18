import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _userClicks = 0;

  int get userClicks => _userClicks;

  set userClicks(int value) {
    _userClicks = value;
    notifyListeners();
  }

  int _streamCount = 0;

  int get streamCount => _streamCount;

  set streamCount(int value) {
    _streamCount = value;
    notifyListeners();
  }

  int getTotalCount() {
    return _userClicks + _streamCount;
  }
}
