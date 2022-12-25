import 'package:flutter/material.dart';
import 'package:islami0mn/Providers/settings_provider.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatefulWidget {


  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap : (){
                settingsProvider.changeLang('en');

              }
             ,child: settingsProvider.currentLang == 'en'?
    getSelectedItem("English"): getUnSelectedItem("English"),
      ),
            const SizedBox(height: 20,),

          InkWell(
                onTap: (){
                  settingsProvider.changeLang('ar');
                }
              ,child: settingsProvider.currentLang == 'ar'?
          getSelectedItem("العربية"): getUnSelectedItem("العربية"),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title){
  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Theme.of(context).accentColor,width: 2)
        ),
        child: Text(title, style: Theme.of(context).textTheme.headline5?.
        copyWith(color: Theme.of(context).accentColor),),

      ),
      Icon(Icons.check_sharp , color: Theme.of(context).accentColor,)
    ],
  );
  }

  Widget getUnSelectedItem(String title){
    return  Text(title,
      style: Theme.of(context).textTheme.headline5,);
  }
}
