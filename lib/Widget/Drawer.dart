import 'package:flutter/material.dart';
class DrawerMain extends StatelessWidget{
  const DrawerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFCADCED)),
              child: Text("Mono Cycle",style: TextStyle(color: Colors.black),),),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),

      ),
    );
  }
}