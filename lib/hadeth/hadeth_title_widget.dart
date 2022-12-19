import 'package:flutter/material.dart';
import 'package:islami0mn/hadeth/hadeth.dart';
import 'package:islami0mn/hadeth_details/hadth_details.dart';
import 'package:islami0mn/sura_details/sura_details.dart';

import '../sura_details/sura_details_Args.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth ;
  HadethTitle(this.hadeth);



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routName,
        arguments: hadeth);

      },
      child: Container(
          alignment: Alignment.center,
            child: Text(
             hadeth.title
              , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}
