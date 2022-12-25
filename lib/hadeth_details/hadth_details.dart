import 'package:flutter/material.dart';
import 'package:islami0mn/hadeth/hadeth.dart';
import 'package:provider/provider.dart';
import '../Providers/settings_provider.dart';

class HadethDetailsScreen  extends StatelessWidget {
  static const String routName = "HadethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

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
            title: Text(args.title),

          ),
          body:
          Container(
            width: double.infinity,
            height: double.infinity,

            child: Card(
                elevation: 12,
                margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)), 
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(args.content , style:  Theme.of(context).textTheme.headline6,
                      textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
                  ),
                 )


            ),
          ),
        )


    );
  }}

