import 'package:application/Data/mainData.dart';
import 'package:application/data.dart';
import 'package:application/home_Page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
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
                        onChanged: (text) {
                          Strings.Yourname = text;
                        },
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
                            // Strings.upDate= date;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purpleAccent, width: 1.0)),
                            labelText: Strings.upDate,
                            hintText: '00/00/0000'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        onChanged: (text) {
                          Strings.avarage = text as int;
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purpleAccent, width: 1.0)),
                            labelText: "Avarage Day",
                            hintText: 'Days'),
                      ),
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: const Text('Sign In'),
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const HomePage()),
                        );
                      },
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
