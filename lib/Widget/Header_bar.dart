import 'package:application/data.dart';
import 'package:application/home_Page.dart';
import 'package:flutter/material.dart';

class Header_bar extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Center(child: Icon(Icons.arrow_back_ios),
            ),
          ),
          Text("Yukthi",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          Container(

            height: 60,
            width: 60,
            decoration: BoxDecoration(boxShadow: coustomShadow,color:primaryColor,shape: BoxShape.circle),
            child: Stack(children: <Widget>[
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