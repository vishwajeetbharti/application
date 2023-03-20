import 'package:application/Data/data.dart';
import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Center(
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          // Text(
          //   Strings.Yourname,
          //   style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          // ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                boxShadow: coustomShadow,
                color: primaryColor,
                shape: BoxShape.circle),
            child: Stack(
              children: const <Widget>[
                Center(
                  child: Icon(Icons.arrow_back_ios),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
