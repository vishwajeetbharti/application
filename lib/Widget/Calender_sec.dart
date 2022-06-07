import 'package:flutter/material.dart';
import 'package:application/data.dart';
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

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 2,vertical: 40),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color:primaryColor, boxShadow: coustomShadow,borderRadius: BorderRadius.circular(20)),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(onPressed: (){},
                              icon: Icon(
                            Icons.arrow_left
                          )),
                          Text("month",style: TextStyle(fontSize:20,fontWeight: FontWeight.w400),),
                          IconButton(onPressed: (){},
                              icon: Icon(
                                  Icons.arrow_right
                              )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mon",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Tue",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Wed",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Thu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Fri",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Sat",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                Text("Sun",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   1",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   2",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   3",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   4",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   5",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   6",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Stack(children: <Widget>[
                                        Text("   7",style: TextStyle(fontSize: 20),),
                                      ],),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("   8",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("   9",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  10",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  11",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  12",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  13",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  14",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  15",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  16",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  17",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  18",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  19",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  20",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  21",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  22",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  23",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  24",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  25",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  26",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  27",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  28",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  30",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  31",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                );
              }
            );
          },

        ))
      ],

    );
  }
}