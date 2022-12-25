import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color lightAccent = Color(0xFF242424);

  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkAceent = Color(0xFFFACC1D);


  static final ThemeData LightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )
        )
    ),

    textTheme: TextTheme(
      headline4: TextStyle(fontSize: 30 ,
          fontWeight: FontWeight.bold ,
          color :lightAccent ),

      headline5: TextStyle(fontSize: 26 ,
          fontWeight: FontWeight.bold,
          color: Colors.black),

      headline6: TextStyle(fontSize: 22 ,
          fontWeight: FontWeight.bold,
      color: lightAccent),
    ),
    cardColor: Colors.white,
   primaryColor: lightPrimary,
    accentColor: lightAccent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(fontSize: 30, color: Colors.black ,
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: Colors.black)
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36 , color: lightAccent),
      unselectedIconTheme: IconThemeData(size: 24 , color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black),
      selectedItemColor: Colors.black,
    ),
  );



  static final ThemeData DarkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        )
      )
    ),

    textTheme: TextTheme(
      headline4: TextStyle(fontSize: 30 ,
          fontWeight: FontWeight.bold,
      color: Colors.white),

      headline5: TextStyle(fontSize: 26 ,
          fontWeight: FontWeight.bold,
          color: Colors.white),

      headline6: TextStyle(fontSize: 22 ,
          fontWeight: FontWeight.bold,
      color: darkAceent),
    ),



    cardColor: darkPrimary,
    primaryColor: darkPrimary,
    accentColor: darkAceent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(fontSize: 30, color: Colors.white ,
          fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.white)
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36 , color: darkAceent  ),
      unselectedIconTheme: IconThemeData(size: 24 , color: Colors.white),
      selectedLabelStyle: TextStyle(color: darkAceent),
      selectedItemColor: darkAceent,

    ),
  );





}




