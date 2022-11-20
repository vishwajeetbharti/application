import 'package:application/Data/repository/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Data/mainData.dart';

class Record extends StatefulWidget {
  const Record({Key? key}) : super(key: key);

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  void initiate() async {
    final prefs = await SharedPreferences.getInstance();
    Strings.avaVariable = prefs.getString(Strings.average)!;
    var dt = DateTime.fromMillisecondsSinceEpoch(
        int.parse(prefs.getString(Strings.date)!));
    Strings.dateVariable = DateFormat('dd-MM-yy').format(dt);
    var dt2 = DateTime.fromMillisecondsSinceEpoch(
        int.parse(prefs.getString(Strings.date)!) + 2419200000);
    Strings.predictionDateVariable = DateFormat('dd-MM-yy').format(dt2);
  }

  @override
  void initState() {
    super.initState();
    initiate();
  }

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
            children: const [
              Text(
                "Previous",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Prediction",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Duration",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 12,
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
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            Strings.dateVariable,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: Text(
                            Strings.predictionDateVariable,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 90),
                          child: Text(
                            Strings.avaVariable,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
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
}
