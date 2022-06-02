import 'package:flutter/material.dart';
import 'package:application/Calender.dart';
import 'package:application/home_Page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "application",
      home: HomePage(),
    );
  }
}