import 'package:application/data.dart';
import 'package:flutter/material.dart';

class CalenderSec extends StatelessWidget {
  const CalenderSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    int dates = now.day;
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
            monthName[i] == "August" ||
            monthName[i] == "October" ||
            monthName[i] == "December") {
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

    return Column(
      children: <Widget>[
        const Text(
          "Calender",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: ListView.builder(
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
            dateInput0 = " ";
            dateInput1 = " ";
            dateInput2 = " ";
            dateInput3 = " ";
            dateInput4 = " ";
            dateInput5 = "1";
            dateInput6 = "2";
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
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 40),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: coustomShadow,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        monthName[i],
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            wordSpacing: 20),
                      ),
                      const Text(
                        "  ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        year.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
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
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 7, top: 15, right: 42, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput0,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 15, right: 45, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput1,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 15, right: 42, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput2,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 15, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput3,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 36, top: 10, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput4,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 41, top: 10, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput5,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    dateInput6,
                                    style: const TextStyle(
                                        fontSize: 20, wordSpacing: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 7, top: 5, right: 42, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput00,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 5, right: 45, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput01,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 5, right: 42, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput02,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput03,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 36, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput04,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 41, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput05,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput06,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 7, right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput10,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 45, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput11,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput12,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput13,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 36, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput14,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 41, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput15,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput16,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 7, right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput20,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 45, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput21,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput22,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 42, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput23,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 36, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput24,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 41, top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput25,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.rectangle),
                              child: Text(
                                dateInput26,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 7, right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput30,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 45, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput31,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput32,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput33,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 36, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput34,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 41, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput35,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput36,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 7, right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput40,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 45, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput41,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput42,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 42, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput43,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 36, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput44,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 41, top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput45,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.rectangle),
                                  child: Text(
                                    dateInput46,
                                    style: const TextStyle(fontSize: 20),
                                  ),
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
