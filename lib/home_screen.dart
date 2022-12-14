import 'package:flutter/material.dart';
import 'package:islami0mn/hadeth/hadeth_tab.dart';
import 'package:islami0mn/my_theme.dart';
import 'package:islami0mn/quran/quran_tab.dart';
import 'package:islami0mn/radio/radio_tab.dart';
import 'package:islami0mn/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back_ground_light.png'),
            fit: BoxFit.fill,),

        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,


            appBar: AppBar(
              //  backgroundColor: Colors.transparent,
              title: Text("Islamy"),

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
                    label: 'Quran'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/sebha _icon.png")),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor ,
                    icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                    label: 'Radio')


              ],),
          body: tabs[selectedIndex],
        )

    );

  }
  List<Widget> tabs =[QuranTab(),HadethTab(),SebhaTab(),RadioTab()];

}
