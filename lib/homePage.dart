import 'package:application/Data/data.dart';
import 'package:application/Data/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Calender.dart';
import 'Screen/Drawer.dart';
import 'bloc/bloc_func.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController averageDayController = TextEditingController();
  final format = DateFormat('dd-MM-yyyy');
  late String milliSecondStartTime = '';
  late String milliSecondEndTime = '';
  final PhaseManagement _management = PhaseManagement();

  @override
  void initState() {
    _management.add(InitiatePhase());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (_) => _management,
        child: BlocBuilder<PhaseManagement, StateFunctions>(
          builder: (context, state) {
            if (state is HomePhase) {
              return _homeScreen(context, state.userName);
            } else if (state is LoginPhase) {
              return _logInScreen(context);
            } else {
              return _errorMassage(context);
            }
          },
        ),
      ),
    );
  }

  Widget _errorMassage(context) {
    return const Center(
      child: Text("Error"),
    );
  }

  Widget _logInScreen(context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Back.png"), fit: BoxFit.cover)),
      child: Center(
        child: SizedBox(
          width: 450,
          height: 400,
          child: Card(
            elevation: 50,
            color: primaryColor,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLength: 15,
                      controller: nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purpleAccent, width: 1.0)),
                          labelText: Strings.name,
                          hintText: Strings.name),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
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
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(3)),
                            ),
                            child: Center(
                              child: Text(
                                milliSecondStartTime == ''
                                    ? "Start Date"
                                    : DateFormat('yyyy-MM-dd').format(
                                        DateTime.fromMillisecondsSinceEpoch(
                                            int.parse(milliSecondStartTime))),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            )),
                      ),
                      GestureDetector(
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
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(3)),
                            ),
                            child: Center(
                              child: Text(
                                milliSecondEndTime == ''
                                    ? "End Date"
                                    : DateFormat('yyyy-MM-dd').format(
                                        DateTime.fromMillisecondsSinceEpoch(
                                            int.parse(milliSecondEndTime))),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      controller: averageDayController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purpleAccent, width: 1.0)),
                          labelText: Strings.averageDay,
                          hintText: Strings.days),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                      onPressed: () {
                        if (milliSecondStartTime == '' ||
                            averageDayController.text.isEmpty) {
                          Fluttertoast.showToast(msg: Strings.fillTheForm);
                        } else {
                          _management.compareDate(
                                          DateTime.fromMillisecondsSinceEpoch(
                                              int.parse(
                                                  milliSecondStartTime))) ==
                                      1 &&
                                  milliSecondEndTime == ''
                              ? Fluttertoast.showToast(
                                  msg: Strings.enterEndDate)
                              : _management.add(SetData(
                                  name: nameController.text,
                                  startDate: milliSecondStartTime,
                                  average: averageDayController.text,
                                  endDate: milliSecondEndTime));
                        }
                      },
                      child: const Text('Start'),
                    ),
                  )
                ],
              ),
            ), //Center
          ),
        ),
      ),
    );
  }

  Widget _homeScreen(context, String userName) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: DrawerMain(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          userName,
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
        child: Column(
          children: [
            Strings.checkEndDate
                ? Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.indigo)),
                    child: Column(
                      children: [
                        const Center(
                            child: Text(
                          Strings.msg,
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightBlue),
                        )),
                        ElevatedButton(
                            onPressed: () async {
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
                              _management.add(
                                  FutureSetData(endDate: milliSecondEndTime));
                            },
                            child: const Text("Enter Date"))
                      ],
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.17,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.37,
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        CircularPercentIndicator(
                            radius: 110,
                            lineWidth: 15.0,
                            center: Text(
                              Strings.userUpComingTime,
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.indigo),
                            ),
                            backgroundColor: primaryColor,
                            progressColor: Colors.lightBlue,
                            percent: 0.035,
                            header: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                Strings.daysOfCycle,
                                style: const TextStyle(
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
          ],
        ),
      ),
    );
  }
}
