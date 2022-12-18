import 'package:flutter/material.dart';

class SuraWidget extends StatelessWidget {
  String conntent;
  int index;

  SuraWidget(this.conntent , this.index);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
      child: Text("$conntent ($index) ", textAlign: TextAlign.center, style: TextStyle(fontSize: 24),textDirection: TextDirection.rtl, ),
    );
  }
}
