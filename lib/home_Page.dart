import 'package:application/Calender.dart';
import 'package:application/Widget/Drawer.dart';
import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

bool indStat = true;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: const DrawerMain(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Yukthi",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Calender()),
              );
            },
            icon: const Icon(
              Icons.calendar_today,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Back.png"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 255, left: 15),
          child: Center(
            child: ListView(
              children: <Widget>[
                CircularPercentIndicator(
                    radius: 100,
                    lineWidth: 12.0,
                    center: const Text(
                      "28 days left\nfor next date",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.indigo),
                    ),
                    backgroundColor: primaryColor,
                    progressColor: Colors.lightBlue,
                    percent: 0.035,
                    header: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Days of cycle",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.indigo),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
