

import 'package:amigo/resourses/Flats.dart';
import 'amigo_icons.dart';

import 'package:amigo/resourses/Mess.dart';
import 'package:amigo/resourses/Other%20Utilities.dart';
import 'package:amigo/resourses/Restaurants.dart';
import 'package:amigo/resourses/Rooms.dart';
import 'package:amigo/screens/home_screen.dart';
import 'package:amigo/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



import 'amigo_icons.dart';

class NewDrawer extends StatefulWidget {
  const NewDrawer({Key? key}) : super(key: key);

  @override
  State<NewDrawer> createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white30,
      child: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyanAccent ,Colors.greenAccent]
              )
          ),


        child: Column(

          children: [
           Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.cyanAccent ,Colors.greenAccent]
                  )
              ),

            ),

            SizedBox(
              height: 109,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Amigo.house_user_solid),
              title: Text('Rooms'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Rooms()));
              },
            ),
            ListTile(
              leading: Icon(Amigo.home_city),
              title: Text('Flats'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Flats()));
              },
            ),
            ListTile(
              leading: Icon(Amigo.silverware),
              title: Text('Mess'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mess()));
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.hotel),
              title: Text('Restaurants'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Restaurants()));
              },
            ),
            ListTile(
              leading: Icon(Amigo.store),
              title: Text('Other Utilities'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>OtherUtilities()));
              },
            ),

            SizedBox(
              height: 30,
              // child: Colors.black38,
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.wechat_outlined),
              title: Text('FAQ'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
              },
            ),


          ],
        ),
      ),
    );
  }
}
