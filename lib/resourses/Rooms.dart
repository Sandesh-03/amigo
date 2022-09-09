
import 'package:amigo/screens/insideTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/addprop.dart';
import 'NewDrawer.dart';
import 'amigo_icons.dart';
import 'Rooms.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  bool isSearching= false;
  @override

  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Scaffold(
        drawer: const NewDrawer(),
        appBar:AppBar(
          title:!isSearching ?  const Text('Rooms',style: TextStyle(color: Colors.black))
              :const TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                iconColor: Color(0xffffffff),
                hintText: 'search',
                hintStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          actions: [
            isSearching
                ?IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                setState(() {
                  this.isSearching =false;
                });
              }, )
                : IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                setState(() {
                  this.isSearching =true;
                });
              }, )
          ],
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
        ) ,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.tealAccent,
            elevation: 3,
            child: const Icon(
              Icons.add,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddProperty()));
            }),
        body: BodyTiles(),
      ),
    );
  }
}
class BodyTiles extends StatelessWidget {
  const BodyTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       children: [
         ListTile(
           leading:Container(
             child: Image.asset('images/room.png'),
           ),
           title: const Text('Sai Silp',style: TextStyle(
               fontSize: 20,
               color: Colors.black),
           ),
           subtitle: const Text('Vijaynagar, miraj',style: TextStyle(
             color: Colors.grey,
             fontSize:15 ,
           ),),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Info()));
           },
         ),
         ListTile(
           leading:Container(
             child: Image.asset('images/room.png'),
           ),
           title: const Text('XYz',style: TextStyle(
               fontSize: 20,
               color: Colors.black),
           ),
           subtitle: const Text('Vijaynagar, Sangli',style: TextStyle(
             color: Colors.grey,
             fontSize:15 ,
           ),),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Info()));
           },
         ),ListTile(
           leading:Container(
             child: Image.asset('images/room.png'),
           ),
           title: const Text('Shrivalli houses',style: TextStyle(
               fontSize: 20,
               color: Colors.black),
           ),
           subtitle: const Text('Vishrambag, Sangli',style: TextStyle(
             color: Colors.grey,
             fontSize:15 ,
           ),),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Info()));
           },
         ),

       ],
      ),
    );
  }
}
