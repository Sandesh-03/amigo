
import 'package:flutter/material.dart';

import 'NewDrawer.dart';
class OtherUtilities extends StatefulWidget {
  const OtherUtilities({Key? key}) : super(key: key);

  @override
  State<OtherUtilities> createState() => _OtherUtilitiesState();
}

class _OtherUtilitiesState extends State<OtherUtilities> {
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
          title: Text('Other Utilities',style: TextStyle(color: Colors.black)),
        ) ,
      ),
    );
  }
}

