import 'package:application/data.dart';
import 'package:flutter/material.dart';
class Maincal extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("month",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}