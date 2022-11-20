import 'package:application/Data/repository/data.dart';
import 'package:flutter/material.dart';

import '../Data/mainData.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.6,
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Text(
                  Strings.myVariable,
                  style: const TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
