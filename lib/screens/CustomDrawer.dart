import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return
        ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Text('To Do App',
                  style: TextStyle(
                    color: tdBlack,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),)
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text('Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            ListTile(
              tileColor: Colors.black,
              title: Text('Schedules',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ],);
  }
}
