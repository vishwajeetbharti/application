import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Data/DataBase.dart';
import '../Data/string.dart';

part 'event_func.dart';
part 'state_func.dart';

class PhaseManagement extends Bloc<EventFunctions, StateFunctions> {
  int i = 0;
  DataBaseHelper dataBase = DataBaseHelper.instance;
  final StreamController<List<Map<String, dynamic>>> controller =
      StreamController.broadcast();
  Stream<List<Map<String, dynamic>>> get schema => controller.stream;
  PhaseManagement() : super(ErrorMassage()) {
    on<InitiatePhase>((event, emit) async {
      bool? installed = false;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      installed = prefs.getBool('first_check');
      if (installed == true) {
        List<Map<String, dynamic>> userName = await dataBase.getUserDetails();
        emit(HomePhase(userName: userName[0]['name']));
      } else {
        emit(LoginPhase());
      }
    });
    on<SetData>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      try {
        dataBase.insertUserDetails({
          DataBaseHelper.name: event.name,
          DataBaseHelper.startDate: event.startDate,
          DataBaseHelper.endDate: event.endDate,
          DataBaseHelper.averageDay: event.average,
        });
        prefs.setBool('first_check', true);
        int statement = compareDate(
            DateTime.fromMillisecondsSinceEpoch(int.parse(event.startDate)));
        if (statement == 0 || statement == -1) {
          Strings.checkEndDate = true;

          dataBase.insertUserData({
            DataBaseHelper.sNo: 0,
            DataBaseHelper.name: event.name,
            DataBaseHelper.diff: "0",
            DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(
                DateTime.fromMillisecondsSinceEpoch(
                    int.parse(event.startDate))),
            DataBaseHelper.endDate: "",
            DataBaseHelper.duration: event.average
          });
        } else if (statement == 1) {
          // dataBase.insertUserData({
          //   DataBaseHelper.sNo: 0,
          //   DataBaseHelper.name: event.name,
          //   DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(
          //       DateTime.fromMillisecondsSinceEpoch(
          //           int.parse(event.startDate))),
          //   DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(
          //       DateTime.fromMillisecondsSinceEpoch(int.parse(event.endDate))),
          //   DataBaseHelper.duration: event.average
          // });
          fillPrediction(
              event.name,
              DateTime.fromMillisecondsSinceEpoch(int.parse(event.startDate)),
              DateTime.fromMillisecondsSinceEpoch(int.parse(event.endDate)),
              int.parse(event.average));
        }
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }
      emit(HomePhase(userName: event.name));
    });
    on<RecordsPhase>((event, emit) async {
      await dataBase.getData().then((value) => {recordsList.addAll(value)});
      print(recordsList.length);
      print("1111111111111111111111111111111111");
      controller.sink.add(recordsList);
      print("1111111111111111111111111111111111");

      emit(RecordsState(record: recordsList));
    });
    on<FutureSetData>((event, emit) async => {
          recordsList = await dataBase.getData(),
          fillPrediction(
            recordsList[0]["name"],
            DateTime.parse(recordsList[0]["start"]),
            DateTime.fromMillisecondsSinceEpoch(int.parse(event.endDate)),
            recordsList[0]["duration"],
          ),
          dataBase.toDeleteData(""),
          emit(HomePhase(userName: recordsList[0]["name"])),
        });
  }
  recordsPhase() async {
    recordsList.clear();
    await dataBase.getData().then((value) {
      recordsList.addAll(value);
      controller.sink.add(recordsList);
    });
  }

  compareDate(DateTime enterDate) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    if (today.isAtSameMomentAs(enterDate)) {
      return 0;
    } else {
      return today.compareTo(enterDate);
    }
  }

  fillPrediction(String name, DateTime start, DateTime end, int duration) {
    Duration diff = end.difference(start);
    try {
      DateTime newStartDate = end.add(Duration(days: duration));
      DateTime newEndDate = newStartDate.add(diff);
      dataBase.insertUserData({
        DataBaseHelper.sNo: i,
        DataBaseHelper.name: name,
        DataBaseHelper.diff: diff.toString(),
        DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(newStartDate),
        DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(newEndDate),
        DataBaseHelper.duration: duration.toString()
      });
      if (i < 11) {
        i++;
        fillPrediction(name, newStartDate, newEndDate, duration);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  upDateDuration(String name, int index, int averageDay, DateTime endDate,DateTime startDate) async {
    DateTime eDate = endDate;
    Duration diff = endDate.difference(startDate);
    try {
      dataBase.toUpDateData(index, {
        DataBaseHelper.diff: diff.toString(),
        DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(startDate),
        DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(endDate),
        DataBaseHelper.duration: averageDay
      });
      for (int i = index + 1; i < 12; i++) {
        DateTime sDate = eDate.add(Duration(days: averageDay));
        DateTime newEDate = sDate.add(diff);
        dataBase.toUpDateData(i, {
          DataBaseHelper.diff: diff.toString(),
          DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(sDate),
          DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(newEDate),
          DataBaseHelper.duration: averageDay.toString()
        });

        eDate = newEDate;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  upDateStartDate(int index, DateTime previousEndDate,DateTime startDate,DateTime previousStartDate) {
    Duration avg = startDate.difference(previousEndDate);
    Duration diff = previousEndDate.difference(previousStartDate);
    DateTime sDate= startDate;
    DateTime eDate= startDate.add(diff);
    print("kkiiiiiifihshfshfehhehehehiefhiehfiehfiheifheihfeihfiehfiehfahfhfwfihafoihaf");
    print(avg.inDays);
    try{
      dataBase.toUpDateData(index, {
        DataBaseHelper.diff: diff.toString(),
        DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(sDate),
        DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(eDate),
        DataBaseHelper.duration: avg.inDays.toString()
      });
      for (int i = index + 1; i < 12; i++) {
        DateTime sDate = eDate.add(avg);
        DateTime newEDate = sDate.add(diff);
        dataBase.toUpDateData(i, {
          DataBaseHelper.diff: diff.toString(),
          DataBaseHelper.start: DateFormat('yyyy-MM-dd').format(sDate),
          DataBaseHelper.endDate: DateFormat('yyyy-MM-dd').format(newEDate),
          DataBaseHelper.duration: avg.toString()
        });
        eDate = newEDate;
      }
    }catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }

    for (int j = 0; j < recordsList.length; j++) {
      print(recordsList[j]["Sno"]);
      print(recordsList[j]["start"]);
    }
  }

  upDateEndDate(int index, DateTime startDate, DateTime endDate) {}
}
