import 'package:flutter/material.dart';
import 'package:application/data.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'main_cal.dart';

class Calender_sec extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          child: Text("Calender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        Expanded(child: ListView.builder(
          itemCount: 12,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,i){
            return Builder(

              builder: (context) {
                return Container(

                  child: Maincal(),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 2,vertical: 40),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color:primaryColor, boxShadow: coustomShadow,borderRadius: BorderRadius.circular(20)),
                );
              }
            );
          },

        ))
      ],

    );
  }
}