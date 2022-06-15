import 'package:flutter/material.dart';
import 'package:application/data.dart';

class CalenderSec extends StatelessWidget{
  const CalenderSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    int dates = now.day;
    List<String> monthName = ["January","February","March","April","May","June","July","August","September","October","November","December"];
    String dateInput0,dateInput1,dateInput2,dateInput3,dateInput4,dateInput5,dateInput6;
    String dateInput00,dateInput01,dateInput02,dateInput03,dateInput04,dateInput05,dateInput06;
    dateInput0="1";
    dateInput1=" ";
    dateInput2=" ";
    dateInput3=" ";
    dateInput4=" ";
    dateInput5="1";
    dateInput6="2";
    dateInput00="10";
    return Column(
      children: <Widget>[
        const Text("Calender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Expanded(child: ListView.builder(
          itemCount: monthName.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,i){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 40),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color:primaryColor, boxShadow: coustomShadow,borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(monthName[i],style: const TextStyle(fontSize:20,fontWeight: FontWeight.w400,wordSpacing: 20),),
                          const Text("  ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w400),),
                          Text(year.toString(),style: const TextStyle(fontSize:20,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
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
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 7,top: 15,right: 42, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput0,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15,right: 45, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput1,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15,right: 42, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput2,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right:42,top: 10,bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput3,style: const TextStyle(fontSize: 20,wordSpacing: 10),),                                      ],),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right:36,top: 10,bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput4,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right:41,top: 10,bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput5,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10,bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                  child: Stack(children: <Widget>[
                                    Text(dateInput6,style: const TextStyle(fontSize: 20,wordSpacing: 10),),
                                  ],),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child:  Text(dateInput00,style: const TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("   9",style: TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("  10",style: TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("  11",style: TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("  12",style: TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("  13",style: TextStyle(fontSize: 20),),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(color:primaryColor,shape: BoxShape.rectangle),
                                  child: const Text("  14",style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  15",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  16",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  17",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  18",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  19",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  20",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  21",style: TextStyle(fontSize: 20),),
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
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  22",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  23",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  24",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  25",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  26",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  27",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  28",style: TextStyle(fontSize: 20),),
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
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  29",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  30",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("  31",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("    ",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("    ",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("    ",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(color: primaryColor,shape: BoxShape.rectangle),
                                      child: const Text("    7",style: TextStyle(fontSize: 20),),
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

          },

        ))
      ],

    );
  }
}