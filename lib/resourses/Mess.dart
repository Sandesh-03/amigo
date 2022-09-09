
import 'package:flutter/material.dart';

import '../screens/addprop.dart';
import '../screens/insideTile.dart';
import 'NewDrawer.dart';


class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
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
          title:! isSearching ? Text('Mess',style: TextStyle(color: Colors.black))
              :const TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                iconColor: Color(0xffffffff),
                hintText: 'search',
                hintStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
          centerTitle: true,

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
              child: Image.asset('images/mess.png'),
            ),
            title: const Text('Sachin Bhojnalay',style: TextStyle(
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
              child: Image.asset('images/mess.png'),
            ),
            title: const Text('XYZ',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('WCE',style: TextStyle(
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
              child: Image.asset('images/mess.png'),
            ),
            title: const Text('WCE mess',style: TextStyle(
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
