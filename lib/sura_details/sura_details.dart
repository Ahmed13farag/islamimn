import 'package:flutter/material.dart';
import 'package:islami0mn/sura_details/sura_details_Args.dart';

class SuraDetails extends StatelessWidget {
  static const String routName = "SuraDetails";
  const SuraDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs  args =
    (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;
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
    body: Text(args.name),

    ),
    );
  }
}
