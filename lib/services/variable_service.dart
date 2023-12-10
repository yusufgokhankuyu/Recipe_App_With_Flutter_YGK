import 'package:flutter/material.dart';

class VariableService extends ChangeNotifier {
  String _userName = "";
  String _userEmail = "";

  String get userName => _userName;
  String get userEmail => _userEmail;

  set userName(String value) {
    _userName = value;
    notifyListeners();
  }

  set userEmail(String value) {
    _userEmail = value;
    notifyListeners();
  }
}
