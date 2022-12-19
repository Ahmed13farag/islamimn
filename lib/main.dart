import 'package:flutter/material.dart';
import 'package:islami0mn/hadeth_details/hadth_details.dart';
import 'package:islami0mn/home_screen.dart';
import 'package:islami0mn/my_theme.dart';
import 'package:islami0mn/sura_details/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      //themeMode: ThemeMode.dark,

    routes: {
        HomeScreen.routeName         : (_)=> HomeScreen(),
        SuraDetails.routName         : (_)=> SuraDetails(),
        HadethDetailsScreen.routName : (_)=> HadethDetailsScreen(),
    },

    initialRoute: HomeScreen.routeName,

    );
  }
}


