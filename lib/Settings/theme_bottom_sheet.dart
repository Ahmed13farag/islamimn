import 'package:flutter/material.dart';
import 'package:islami0mn/Providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ThemeBottomSheet extends StatefulWidget {


  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
                settingsProvider.changeTheme(ThemeMode.light);
              }
             ,child:settingsProvider.isDarkMode()?
          getUnSelectedItem(AppLocalizations.of(context)!.light):getSelectedItem(AppLocalizations.of(context)!.light)),

            const SizedBox(height: 20,),

          InkWell(
                onTap: (){
                  settingsProvider.changeTheme(ThemeMode.dark);
                }
              ,child: settingsProvider.isDarkMode()?
          getSelectedItem(AppLocalizations.of(context)!.dark):getUnSelectedItem(AppLocalizations.of(context)!.dark))
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
