import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/dark_mode.dart';
import 'package:food_delivery_app/theme/light_mode.dart';


class ThemeProvider with ChangeNotifier {
   ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {

    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
// class ThemeProvider with ChangeNotifier{
//   bool _isDarkMode = false;
//   bool get isDarkMode => _isDarkMode;
//   ThemeProvider(){
//     _loadTheme();
//   }
//
//   void toggleTheme(bool isOn){
//     _isDarkMode = isOn;
//     _saveTheme();
//     notifyListeners();
//
//   }
//
//   void _loadTheme()async{
//     final prefs = await SharedPreferences.getInstance();
//     _isDarkMode =prefs.getBool("isDarkMode") ?? false;
//     notifyListeners();
//   }
//   void _saveTheme()async{
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setBool("isDarkMode", _isDarkMode);
//   }
//
// }
