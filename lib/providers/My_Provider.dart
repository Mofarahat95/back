import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode MyTheme = ThemeMode.light;
  changeTheme(ThemeMode mode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    MyTheme = mode;
    prefs.setBool('isDark', mode == ThemeMode.dark);
    notifyListeners();
  }

  getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDark');
    if (isDark != null) {
      if (isDark == true) {
        MyTheme = ThemeMode.light;
      } else {
        MyTheme = ThemeMode.dark;
      }
      notifyListeners();
    }
  }
}
