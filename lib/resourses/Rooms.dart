
import 'package:flutter/material.dart';

import 'NewDrawer.dart';
import 'amigo_icons.dart';
import 'Rooms.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override

  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(

        color: Colors.deepOrange,
      ),
      child: Scaffold(
        drawer: NewDrawer(),

        appBar:AppBar(
          title: Text('Rooms',style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
        ) ,
      ),
    );
  }
}
