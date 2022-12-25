import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami0mn/my_theme.dart';
import 'package:islami0mn/Providers/settings_provider.dart';





class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle = 0;
  int counter = 0;
  int currentIndex =0 ;
  List<String> azkar = [
    'سبحان الله',
    'الحمد الله',
    'لا اله الا الله',
    'الله اكبر ', // 3 length - 1
  ];


  void rotateSebhaBody() {
    angle--;
    counter++;
    if (counter == 34) {
      counter=0;
      currentIndex++;
    }

    if (currentIndex > azkar.length-1) {
      currentIndex =0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .42,
            child: Stack(
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.45,
                  child: settingsProvider.isDarkMode()
                      ? Image.asset('assets/images/sebha_dark_head.png')
                      : Image.asset('assets/images/sebha_light_head.png'),
                ),
                Positioned(
                    top: 70,
                    left: MediaQuery.of(context).size.width * .22,
                    child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          rotateSebhaBody();
                        },
                        child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(
                            settingsProvider.isDarkMode()
                                ? 'assets/images/sebha_dark_body.png'
                                : 'assets/images/sebha_light_body.png',
                            width: 200,
                            height: 200,
                          ),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color:
              settingsProvider.isDarkMode() ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 60,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: settingsProvider.isDarkMode()
                    ? MyTheme.darkPrimary
                    : MyTheme.lightPrimary,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: settingsProvider.isDarkMode()
                      ? Colors.white
                      : Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 137,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: settingsProvider.isDarkMode()
                    ? MyTheme.darkAceent
                    : MyTheme.lightPrimary,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              azkar[currentIndex],
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: settingsProvider.isDarkMode()
                      ? Colors.black
                      : Colors.white,

              ),

            ),
          )
        ],
      ),
    );
  }
}
