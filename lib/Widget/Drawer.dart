import 'package:application/Records.dart';
import 'package:application/Widget/aboutUs.dart';
import 'package:application/profile.dart';
import 'package:flutter/material.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFCADCED)),
              child: Text(
                "Meno Cycle",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: Colors.indigo),
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Profile()),
                );
                // Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.2,
            ),
            ListTile(
              title: const Text('Records'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Record()),
                );
                // Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.2,
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const About()),
                );
                // Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.2,
            ),
            ListTile(
              title: const Text('More app'),
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
