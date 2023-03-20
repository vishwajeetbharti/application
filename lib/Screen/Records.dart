import 'package:application/Data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Data/string.dart';
import '../bloc/bloc_func.dart';

class Record extends StatefulWidget {
  const Record({Key? key, required this.record}) : super(key: key);
  final List record;

  @override
  State<Record> createState() => _RecordState();
}

final PhaseManagement _management = PhaseManagement();

final TextEditingController averageDayController = TextEditingController();
String milliSecondStartTime = '';
String milliSecondEndTime = '';

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Records",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                Strings.startDate,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                Strings.endDate,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                Strings.durationDays,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.record.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showCommonDateDialog(
                                context, index, Strings.startDate);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            margin: const EdgeInsets.only(left: 20),
                            child: Text(
                              widget.record[index]['start'],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showCommonDateDialog(
                                context, index, Strings.endDate);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 80),
                            child: Text(
                              widget.record[index]['end'],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showCommonDateDialog(context, index, "");
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 90),
                            child: Text(
                              "${widget.record[index]['duration']}",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  _showCommonDateDialog(context, int index, String date) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: date == ""
                ? const Text("Change Duration")
                : Text("Change $date Date"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  date == ""
                      ? TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          controller: averageDayController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.purpleAccent, width: 1.0)),
                              hintText: Strings.days,
                              label: Center(
                                child: Text(Strings.averageDay),
                              )),
                        )
                      : date == Strings.startDate
                          ? GestureDetector(
                              onTap: () async {
                                final date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));
                                if (date != null) {
                                  setState(() {
                                    milliSecondStartTime =
                                        date.millisecondsSinceEpoch.toString();
                                  });
                                }
                              },
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black45),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(3)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      milliSecondStartTime == ''
                                          ? "Start Date"
                                          : DateFormat('yyyy-MM-dd').format(
                                              DateTime.fromMillisecondsSinceEpoch(
                                                  int.parse(
                                                      milliSecondStartTime))),
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  )),
                            )
                          : GestureDetector(
                              onTap: () async {
                                final date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));
                                if (date != null) {
                                  setState(() {
                                    milliSecondEndTime =
                                        date.millisecondsSinceEpoch.toString();
                                  });
                                }
                              },
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black45),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(3)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      milliSecondEndTime == ''
                                          ? "End Date"
                                          : DateFormat('yyyy-MM-dd').format(
                                              DateTime
                                                  .fromMillisecondsSinceEpoch(
                                                      int.parse(
                                                          milliSecondEndTime))),
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                  )),
                            ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    date == ""
                        ? _management.upDateDuration(
                            index,
                            int.parse(averageDayController.text),
                            widget.record[index]['end'])
                        : date == Strings.startDate
                            ? _management.upDateStartDate(
                                index,
                                widget.record[index - 1]['end'],
                                DateTime.fromMillisecondsSinceEpoch(
                                    int.parse(milliSecondStartTime)))
                            : _management.upDateEndDate(
                                index,
                                widget.record[index]['start'],
                                DateTime.fromMillisecondsSinceEpoch(
                                    int.parse(milliSecondEndTime)));
                  },
                  child: const Text("Confirm")),
            ],
          );
        });
  }
}
