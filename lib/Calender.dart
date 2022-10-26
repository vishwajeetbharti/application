import 'package:application/Widget/Calender_sec.dart';
import 'package:application/Widget/Header_bar.dart';
import 'package:application/data.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 120,
            child: HeaderBar(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.60,
            child: CalenderSec(),
          ),
        ],
      ),
    );
  }
}
