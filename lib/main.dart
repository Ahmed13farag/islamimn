import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami0mn/Providers/settings_provider.dart';
import 'package:islami0mn/hadeth_details/hadth_details.dart';
import 'package:islami0mn/home_screen.dart';
import 'package:islami0mn/my_theme.dart';
import 'package:islami0mn/sura_details/sura_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext) => SettingsProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale: Locale(settingsProvider.currentLang),
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: settingsProvider.currentTheme,


    routes: {
        HomeScreen.routeName         : (_)=> HomeScreen(),
        SuraDetails.routName         : (_)=> SuraDetails(),
        HadethDetailsScreen.routName : (_)=> HadethDetailsScreen(),
    },

    initialRoute: HomeScreen.routeName,

    );
  }
}


