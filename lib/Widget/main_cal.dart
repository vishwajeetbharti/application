import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
class Maincal extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Calendar(
          startOnMonday: true,
          weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
          eventColor: Colors.red,
          isExpanded: true,
          hideArrows: true,
          hideTodayIcon: true,
        ),
      ),
    );
  }
}