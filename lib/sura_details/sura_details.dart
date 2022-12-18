import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami0mn/sura_details/sura_details_Args.dart';
import 'package:islami0mn/sura_details/sura_widget.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> sura =[];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs  args =
    (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;
      if(sura.isEmpty) {
        readFile(args.index + 1);
      };
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
    title: Text(args.name),

    ),
    body:
    sura.isEmpty?Center(child: CircularProgressIndicator(),) :

    Card(
      elevation: 12,
      margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListView.separated(itemBuilder: (_,index){
        return SuraWidget (sura[index] , index+1);
      }, itemCount: sura.length,
      separatorBuilder: (_,__){
        return Container(color: Theme.of(context).primaryColor,
          height: 1,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 50),
        );
      },),
    )


    ),
    );


  }

  void readFile(int fileIndex ) async {
    String fileContent = await rootBundle.loadString("assets/files/$fileIndex.txt");
    List<String> lines = fileContent.trim().split('\n');
    sura = lines;
    setState(() {

    });

  }
}
