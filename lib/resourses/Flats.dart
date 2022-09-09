import 'package:amigo/screens/addprop.dart';
import 'package:amigo/screens/insideTile.dart';
import 'package:flutter/material.dart';

import 'NewDrawer.dart';

class Flats extends StatefulWidget {
  const Flats({Key? key}) : super(key: key);

  @override
  State<Flats> createState() => _FlatsState();
}

class _FlatsState extends State<Flats> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Scaffold(
        drawer: const NewDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: !isSearching
              ? const Text('Flats', style: TextStyle(color: Colors.black))
              : const TextField(
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
        ),
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
              child: Image.asset('images/flats.png'),
            ),
            title: const Text('SaiSilp',style: TextStyle(
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
              child: Image.asset('images/flats.png'),
            ),
            title: const Text('Shri Sivas',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Shivaji chowk ,Sambhajinagar',style: TextStyle(
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
              child: Image.asset('images/flats.png'),
            ),
            title: const Text('Sapkal Nivas',style: TextStyle(
                fontSize: 20,
                color: Colors.black),
            ),
            subtitle: const Text('Chincholi Bore',style: TextStyle(
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
