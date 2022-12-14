import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color lightAccent = Color(0xFF242424);

  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkAceent = Color(0xFFFACC1D);


  static final ThemeData LightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(fontSize: 30, color: Colors.black , fontWeight: FontWeight.bold),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36 , color: lightAccent),
      unselectedIconTheme: IconThemeData(size: 24 , color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold ),
      selectedItemColor: Colors.black,
      //unselectedItemColor: IconThemeData(size: 24 , color: Colors.white),
      //selectedItemColor: IconThemeData(size: 36 ,color: Colors.black),
    ),
  );


   static final ThemeData DarkTheme = ThemeData(
    primaryColor: darkPrimary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(fontSize: 30, color: Colors.black , fontWeight: FontWeight.bold),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36 , color: Colors.black ),
      unselectedIconTheme: IconThemeData(size: 24 , color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black),
      selectedItemColor: Colors.black,

      //unselectedItemColor: IconThemeData(size: 24 , color: Colors.white),
      //selectedItemColor: IconThemeData(size: 36 ,color: Colors.black),
    ),
  );


}