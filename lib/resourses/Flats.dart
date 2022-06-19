
import 'package:flutter/material.dart';

import 'NewDrawer.dart';

class Flats extends StatefulWidget {
  const Flats({Key? key}) : super(key: key);

  @override
  State<Flats> createState() => _FlatsState();
}

class _FlatsState extends State<Flats> {
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
          title: Text('Flats',style: TextStyle(color: Colors.black)),
        ) ,
      ),
    );
  }
}
