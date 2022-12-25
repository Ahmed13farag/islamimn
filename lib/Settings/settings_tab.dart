import 'package:flutter/material.dart';
import 'package:islami0mn/Providers/settings_provider.dart';
import 'package:islami0mn/Settings/language_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab  extends StatefulWidget {


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme , style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Theme.of(context).accentColor,width: 2)
              ),
              child: Text(settingsProvider.currentTheme == ThemeMode.light?
              AppLocalizations.of(context)!.light
                  :AppLocalizations.of(context)!.dark, style: Theme.of(context).textTheme.headline6,) ,
            ),
          ),
          SizedBox(height: 40,),


          Text(AppLocalizations.of(context)!.languge , style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();

            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).accentColor,width: 2)
              ),
              child: Text(settingsProvider.currentLang == 'en'?
              "English"
                  :"العربية", style: Theme.of(context).textTheme.headline6,) ,
            ),
          )
        ],
      ) ,
    );
  }

  void ShowThemeBottomSheet(){
    showModalBottomSheet(context: context,
        builder: (buildContext){
      return ThemeBottomSheet();
        });
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (buildContext){
          return LanguageBottomSheet();
        });

  }
}
