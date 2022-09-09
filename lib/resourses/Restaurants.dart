

import 'package:amigo/resourses/NewDrawer.dart';
import 'package:flutter/material.dart';

import '../screens/addprop.dart';
import '../screens/insideTile.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  bool isSearching= false;
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
          title: !isSearching ?Text('Restuarants',style: TextStyle(color: Colors.black))
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
              child: Image.asset('images/hotel.png'),
            ),
            title: const Text('Ajawa',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Vishrambaag, Sangli',style: TextStyle(
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
              child: Image.asset('images/hotel.png'),
            ),
            title: const Text('Garwa',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Chincholi Bore',style: TextStyle(
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
              child: Image.asset('images/hotel.png'),
            ),
            title: const Text('Ladda chi kulfi',style: TextStyle(
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
