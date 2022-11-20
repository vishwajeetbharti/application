import 'package:application/Data/mainData.dart';
import 'package:application/Data/repository/data.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screen/home_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? firstTime = pref.getBool('first_time');
    if (firstTime != null) {
      return const Login();
    } else {
      pref.setBool("first_time", false);
    }
  }

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
  final TextEditingController dateController = TextEditingController();
  final TextEditingController averageDayController = TextEditingController();
  final format = DateFormat('dd-MM-yyyy');
  late String milliSecondTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                          ),
                          child: DateTimeField(
                            initialValue: DateTime.now(),
                            format: format,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            onShowPicker:
                                (BuildContext context, newDate) async {
                              final date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              if (date != null) {
                                final time = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        newDate ?? DateTime.now()));
                                setState(() {
                                  milliSecondTime =
                                      DateTimeField.combine(date, time)
                                          .millisecondsSinceEpoch
                                          .toString();
                                });
                                return DateTimeField.combine(date, time);
                              } else {
                                return DateTime.now();
                              }
                            },
                          ),
                        )),
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
                            labelText: "Average Day",
                            hintText: 'Days'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setString(Strings.name, nameController.text);
                          prefs.setString(Strings.date, milliSecondTime);
                          prefs.setString(
                              Strings.average, averageDayController.text);
                          if (!mounted) return;
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const HomePage()),
                          );
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
      ),
    );
  }
}
