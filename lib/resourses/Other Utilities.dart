
import 'package:flutter/material.dart';

import '../screens/addprop.dart';
import '../screens/insideTile.dart';
import 'NewDrawer.dart';
class OtherUtilities extends StatefulWidget {
  const OtherUtilities({Key? key}) : super(key: key);

  @override
  State<OtherUtilities> createState() => _OtherUtilitiesState();
}

class _OtherUtilitiesState extends State<OtherUtilities> {
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
          title: !isSearching? Text('Other Utilities',style: TextStyle(color: Colors.black))
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
              child: Image.asset('images/other_1.png'),
            ),
            title: const Text('Mirji Staionery',style: TextStyle(
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
              child: Image.asset('images/other_1.png'),
            ),
            title: const Text('Hair spa',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Solapur',style: TextStyle(
              color: Colors.grey,
              fontSize:15 ,
            ),),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Info()));
            },
          ),ListTile(
            leading:Container(
              child: Image.asset('images/other_1.png'),
            ),
            title: const Text('Medical Store',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Vishrambag, Sangli',style: TextStyle(
              color: Colors.grey,
              fontSize:15 ,
            ),),
            trailing: const Icon(Icons.keyboard_arrow_right),
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
