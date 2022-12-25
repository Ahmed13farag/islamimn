import 'package:flutter/material.dart';
import 'package:islami0mn/Settings/settings_tab.dart';
import 'package:islami0mn/hadeth/hadeth_tab.dart';
import 'package:provider/provider.dart';
import 'package:islami0mn/quran/quran_tab.dart';
import 'package:islami0mn/radio/radio_tab.dart';
import 'package:islami0mn/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Providers/settings_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage(settingsProvider.getMainBackGrounimage()),
            fit: BoxFit.fill,),

        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,


            appBar: AppBar(
              //  backgroundColor: Colors.transparent,
              title: Text(AppLocalizations.of(context)!.app_title),

            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (newSelectedIndex){
                  setState(() {
                    selectedIndex = newSelectedIndex;
                  });
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/sebha _icon.png")),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings)


              ],),
          body: tabs[selectedIndex],
        )

    );

  }
  List<Widget> tabs =[QuranTab(),HadethTab(),SebhaTab(),RadioTab(),SettingsTab()];

}
