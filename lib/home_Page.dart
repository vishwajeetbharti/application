import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:application/Calender.dart';
import 'package:application/Widget/Drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: const DrawerMain(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Yukthi",style: TextStyle(color: Colors.black),),
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context)=> const Calender()),);
            },
            icon: const Icon(Icons.calendar_today,color: Colors.black,),
          ),
        ],
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Center(
          child: ListView(
            children:<Widget>[
              CircularPercentIndicator(
                  radius: 80,
                  lineWidth: 20.0,
                  header: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("Going days",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.indigo),),
                  ),
                  center: const Icon(Icons.girl_outlined,size: 100,color: Colors.purple,),
                  backgroundColor: Colors.white,
                  progressColor: Colors.lightBlue,
                  percent: 0.2,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 20.0,
                  header: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("Days of cycle",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.indigo),),
                  ),
                  center: const Text("28 days left\nfor next date",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.indigo),),
                  backgroundColor: Colors.white,
                  progressColor: Colors.lightBlue,
                  percent: 0.035,

                ),
              ),

            ],
          ),
        ),
      ),

    );

  }
}
