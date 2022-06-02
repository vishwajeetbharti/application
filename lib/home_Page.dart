import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:application/Calender.dart';
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
  const IconData calendar_today = IconData(0xe122, fontFamily: 'MaterialIcons');
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Pp",style: TextStyle(color: Colors.black),),
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context)=> Calender()),);
            },
            icon: Icon(Icons.calendar_today),
          ),
        ],
      ),
    );
  }
}