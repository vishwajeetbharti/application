import 'package:application/data.dart';
import 'package:application/home_Page.dart';
import 'package:flutter/material.dart';

class Headerbar extends StatelessWidget{
  const Headerbar({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Center(child: Icon(Icons.arrow_back_ios),
            ),
          ),
          const Text("Yukthi",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          Container(

            height: 60,
            width: 60,
            decoration: BoxDecoration(boxShadow: coustomShadow,color:primaryColor,shape: BoxShape.circle),
            child: Stack(children: const <Widget>[
              Center(
                child:Icon(Icons.arrow_back_ios),
              )
            ],),
          )
        ],
      ),
    );

  }
}