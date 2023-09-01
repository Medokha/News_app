import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class modeprovider extends ChangeNotifier{
  ThemeMode mode =ThemeMode.light;
  void changemode(ThemeMode newmode){
    mode=newmode;
    notifyListeners();
  }
}