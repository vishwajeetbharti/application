import 'package:application/Data/mainData.dart';
import 'package:application/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_Page.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: TextFormField(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2025))
                              .then((date) {
                            if (date != null) {
                              dateController.text =
                                  DateFormat('dd-mm-yyyy').format(date);
                            }
                          });
                        },
                        controller: dateController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purpleAccent, width: 1.0)),
                            labelText: Strings.upDate,
                            hintText: "Date"),
                      ),
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
                          prefs.setString(Strings.date, dateController.text);
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

//class MyDatabase extends
