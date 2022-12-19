import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami0mn/hadeth/hadeth.dart';
import 'package:islami0mn/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget{
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadthList = [];

  @override
  Widget build(BuildContext context) {
   if(allHadthList.isEmpty){
     loadHadethFile();
   }
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_header.png"),
          Expanded(child: ListView.separated(itemBuilder: (context,index){
            return HadethTitle(allHadthList[index]);},
            itemCount: allHadthList.length,separatorBuilder: (_,index){
                return Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 3),
                );
              },))
        ],
      )




    );
  }

  void loadHadethFile() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString("assets/ahadeth.txt");
    List<String> allHadeth = content.split("#");
    for(int i=0 ; i < allHadeth.length; i++){
      String singelHadeth = allHadeth[i].trim();
      int indexOffFirstLine = singelHadeth.indexOf('\n');
     String title = singelHadeth.substring(0,indexOffFirstLine);
     String content = singelHadeth.substring(indexOffFirstLine + 1);
     Hadeth h = Hadeth(title, content);
      hadethList.add(h);
    }
    allHadthList = hadethList;
    setState(() {});


  }
}
