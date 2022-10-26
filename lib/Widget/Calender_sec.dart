import 'package:application/Data/color.dart';
import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderSec extends StatelessWidget {
  const CalenderSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int year = now.year;
    String initAtSun = "";
    String initAtMon = "";
    String initAtTue = "";
    String initAtWed = "";
    String initAtThu = "";
    String initAtFri = "";
    String initAtSat = "";
    List<String> monthName = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    int operetta;
    adding(String anyNumber) {
      operetta = int.parse(anyNumber) + 1;
      return operetta.toString();
    }

    String weekDates(String anyNumber, int i) {
      String empty = " ";
      try {
        operetta = int.parse(anyNumber) + 7;
        if (operetta > 31) {
          return empty;
        } else if (monthName[i] == "April" ||
            monthName[i] == "June" ||
            monthName[i] == "September" ||
            monthName[i] == "November") {
          if (operetta > 30) {
            return empty;
          }
        } else if (monthName[i] == "February") {
          if ((year % 4) == 0) {
            if (operetta > 29) {
              return empty;
            }
          } else {
            if (operetta > 28) {
              return empty;
            }
          }
        }
        return operetta.toString();
      } catch (e) {
        return empty;
      }
    }

    initializer(int initmonth, int inityear) async {
      DateTime firstday = DateTime.utc(inityear, initmonth, 1);
      String dateFormat = DateFormat('EEEE').format(firstday);
      if (dateFormat == "Monday") {
        initAtSun = "7";
        initAtMon = "1";
        initAtTue = "2";
        initAtWed = "3";
        initAtThu = "4";
        initAtFri = "5";
        initAtSat = "6";
      } else if (dateFormat == "Tuesday") {
        initAtSun = "6";
        initAtMon = " ";
        initAtTue = "1";
        initAtWed = "2";
        initAtThu = "3";
        initAtFri = "4";
        initAtSat = "5";
      } else if (dateFormat == "Wednesday") {
        initAtSun = "5";
        initAtMon = " ";
        initAtTue = " ";
        initAtWed = "1";
        initAtThu = "2";
        initAtFri = "3";
        initAtSat = "4";
      } else if (dateFormat == "Thursday") {
        initAtSun = "4";
        initAtMon = " ";
        initAtTue = " ";
        initAtWed = " ";
        initAtThu = "1";
        initAtFri = "2";
        initAtSat = "3";
      } else if (dateFormat == "Friday") {
        initAtSun = "3";
        initAtMon = " ";
        initAtTue = " ";
        initAtWed = " ";
        initAtThu = " ";
        initAtFri = "1";
        initAtSat = "2";
      } else if (dateFormat == "Saturday") {
        initAtSun = "2";
        initAtMon = " ";
        initAtTue = " ";
        initAtWed = " ";
        initAtThu = " ";
        initAtFri = " ";
        initAtSat = "1";
      } else if (dateFormat == "Sunday") {
        initAtSun = "1";
        initAtMon = " ";
        initAtTue = " ";
        initAtWed = " ";
        initAtThu = " ";
        initAtFri = " ";
        initAtSat = " ";
      }
    }

    return Column(
      children: <Widget>[
        const Text(
          "Calender",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: ListView.separated(
          separatorBuilder: (context, i) {
            return const SizedBox(
              width: 20,
            );
          },
          itemCount: monthName.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            String dateInput0,
                dateInput1,
                dateInput2,
                dateInput3,
                dateInput4,
                dateInput5,
                dateInput6,
                dateInput00,
                dateInput01,
                dateInput02,
                dateInput03,
                dateInput04,
                dateInput05,
                dateInput06,
                dateInput10,
                dateInput11,
                dateInput12,
                dateInput13,
                dateInput14,
                dateInput15,
                dateInput16,
                dateInput20,
                dateInput21,
                dateInput22,
                dateInput23,
                dateInput24,
                dateInput25,
                dateInput26,
                dateInput30,
                dateInput31,
                dateInput32,
                dateInput33,
                dateInput34,
                dateInput35,
                dateInput36,
                dateInput40,
                dateInput41,
                dateInput42,
                dateInput43,
                dateInput44,
                dateInput45,
                dateInput46;
            initializer(i + 1, now.year);
            dateInput0 = initAtMon;
            dateInput1 = initAtTue;
            dateInput2 = initAtWed;
            dateInput3 = initAtThu;
            dateInput4 = initAtFri;
            dateInput5 = initAtSat;
            dateInput6 = initAtSun;
            dateInput00 = adding(dateInput6);
            dateInput01 = adding(dateInput00);
            dateInput02 = adding(dateInput01);
            dateInput03 = adding(dateInput02);
            dateInput04 = adding(dateInput03);
            dateInput05 = adding(dateInput04);
            dateInput06 = adding(dateInput05);
            dateInput10 = weekDates(dateInput00, i);
            dateInput11 = weekDates(dateInput01, i);
            dateInput12 = weekDates(dateInput02, i);
            dateInput13 = weekDates(dateInput03, i);
            dateInput14 = weekDates(dateInput04, i);
            dateInput15 = weekDates(dateInput05, i);
            dateInput16 = weekDates(dateInput06, i);
            dateInput20 = weekDates(dateInput10, i);
            dateInput21 = weekDates(dateInput11, i);
            dateInput22 = weekDates(dateInput12, i);
            dateInput23 = weekDates(dateInput13, i);
            dateInput24 = weekDates(dateInput14, i);
            dateInput25 = weekDates(dateInput15, i);
            dateInput26 = weekDates(dateInput16, i);
            dateInput30 = weekDates(dateInput20, i);
            dateInput31 = weekDates(dateInput21, i);
            dateInput32 = weekDates(dateInput22, i);
            dateInput33 = weekDates(dateInput23, i);
            dateInput34 = weekDates(dateInput24, i);
            dateInput35 = weekDates(dateInput25, i);
            dateInput36 = weekDates(dateInput26, i);
            dateInput40 = weekDates(dateInput30, i);
            dateInput41 = weekDates(dateInput31, i);
            dateInput42 = weekDates(dateInput32, i);
            dateInput43 = weekDates(dateInput33, i);
            dateInput44 = weekDates(dateInput34, i);
            dateInput45 = weekDates(dateInput35, i);
            dateInput46 = weekDates(dateInput36, i);
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: coustomShadow,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${monthName[i]} $year',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Mon",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Tue",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Wed",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Thu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Fri",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Sat",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Sun",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput0),
                            Day(date: dateInput1),
                            Day(date: dateInput2),
                            Day(date: dateInput3),
                            Day(date: dateInput4),
                            Day(date: dateInput5),
                            Day(
                              date: dateInput6,
                              rightMargin: 0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput00),
                            Day(date: dateInput01),
                            Day(date: dateInput02),
                            Day(date: dateInput03),
                            Day(date: dateInput04),
                            Day(date: dateInput05),
                            Day(
                              date: dateInput06,
                              rightMargin: 0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput10),
                            Day(date: dateInput11),
                            Day(date: dateInput12),
                            Day(date: dateInput13),
                            Day(date: dateInput14),
                            Day(date: dateInput15),
                            Day(
                              date: dateInput16,
                              rightMargin: 0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput20),
                            Day(date: dateInput21),
                            Day(date: dateInput22),
                            Day(date: dateInput23),
                            Day(date: dateInput24),
                            Day(date: dateInput25),
                            Day(
                              date: dateInput26,
                              rightMargin: 0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput30),
                            Day(date: dateInput31),
                            Day(date: dateInput32),
                            Day(date: dateInput33),
                            Day(date: dateInput34),
                            Day(date: dateInput35),
                            Day(
                              date: dateInput36,
                              rightMargin: 0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Day(date: dateInput40),
                            Day(date: dateInput41),
                            Day(date: dateInput42),
                            Day(date: dateInput43),
                            Day(date: dateInput44),
                            Day(date: dateInput45),
                            Day(
                              date: dateInput46,
                              rightMargin: 0,
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

class Day extends StatefulWidget {
  const Day({
    Key? key,
    required this.date,
    this.rightMargin = 30.0,
  }) : super(key: key);
  final String date;
  final double rightMargin;

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  var color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = AppColors.black;
        });
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(border: Border.all(color: color)),
        margin: EdgeInsets.only(top: 5, right: widget.rightMargin, bottom: 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Text(
            widget.date,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
