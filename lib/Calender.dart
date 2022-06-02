import 'package:application/Widget/Header_bar.dart';
import 'package:application/data.dart';
import 'package:application/home_Page.dart';
import 'package:flutter/material.dart';
import 'package:application/Widget/Calender_sec.dart';
class Calender extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 120,
            child: Header_bar(),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.60,
            child: Calender_sec(),
          ),
        ],
      ),
    );
  }
}