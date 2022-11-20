import 'package:application/Calender.dart';
import 'package:application/Data/repository/data.dart';
import 'package:application/Screen/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Data/mainData.dart';

bool indStat = true;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initiate() async {
    final prefs = await SharedPreferences.getInstance();
    Strings.myVariable = prefs.getString(Strings.name)!;
  }

  @override
  void initState() {
    super.initState();
    initiate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: const DrawerMain(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          Strings.myVariable,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.w300, color: Colors.indigo),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.37,
              child: Center(
                child: ListView(
                  children: <Widget>[
                    CircularPercentIndicator(
                        radius: 110,
                        lineWidth: 15.0,
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
          ],
        ),
      ),
    );
  }
}
