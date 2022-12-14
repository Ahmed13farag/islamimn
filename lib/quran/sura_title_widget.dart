import 'package:flutter/material.dart';
import 'package:islami0mn/sura_details/sura_details.dart';

import '../sura_details/sura_details_Args.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle(this.title , this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routName,
        arguments: SuraDetailsArgs(name: title, index: index));
      },
      child: Container(
          alignment: Alignment.center,
            child: Text(
             title, style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}
