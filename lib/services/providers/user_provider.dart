import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _userName = "Dishan";

  String get userName => _userName;

  void updateUserName(String newName) {
    _userName = newName;
    notifyListeners();
  }
}
