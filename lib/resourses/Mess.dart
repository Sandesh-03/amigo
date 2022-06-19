
import 'package:flutter/material.dart';

import 'NewDrawer.dart';


class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Scaffold(
        drawer: NewDrawer(),
        appBar:AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Mess',style: TextStyle(color: Colors.black)),
          centerTitle: true,


        ) ,
      ),
    );
  }
}
