import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = "en";

  void changeLang(String newLang){

    currentLang = newLang;
    notifyListeners();
  }


  void changeTheme(ThemeMode newMode)
  {
    currentTheme = newMode;
    notifyListeners();

  }

  String getMainBackGrounimage(){
    return currentTheme == ThemeMode.light?
    'assets/images/back_ground_light.png'
        :'assets/images/back_ground_dark.png';
  }

  bool isDarkMode(){
    return currentTheme == ThemeMode.dark;
  }

}

