

import 'package:amigo/resourses/NewDrawer.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
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
          title: Text('Restuarants',style: TextStyle(color: Colors.black)),
        ) ,
      ),
    );
  }
}
