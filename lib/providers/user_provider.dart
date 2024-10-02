import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  String? _name;

  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  String? getName() => _name;
}
