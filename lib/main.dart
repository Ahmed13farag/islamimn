import 'package:flutter/material.dart';
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

    routes: {
        HomeScreen.routeName : (_)=> HomeScreen(),
        SuraDetails.routName : (_)=> SuraDetails(),
    },

    initialRoute: HomeScreen.routeName,

    );
  }
}


