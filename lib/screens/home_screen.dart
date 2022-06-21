import 'package:amigo/resourses/NewDrawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:mapbox_search/mapbox_search.dart';


import 'package:latlong2/spline.dart';
import 'package:flutter_mapbox_autocomplete/flutter_mapbox_autocomplete.dart';

import '../model/user_model.dart';
import 'login_screen.dart';
final MAPBOX_KEY = 'https://api.mapbox.com/styles/v1/sandy03/cl4mvp2wj004u14mtbvqbcqcj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FuZHkwMyIsImEiOiJjbDRtaWNiMjYwenIzM3NwYm45aTNrbm40In0.jczzMpMQ6D4bRvHcy4E8gg';
String apiKey = MAPBOX_KEY;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Scaffold(
          drawer: NewDrawer(),
          appBar:AppBar(
            backgroundColor: Colors.tealAccent,

            title: Text('Home',style: TextStyle(color: Colors.black),),
            centerTitle: true,

          ) ,
          body: Stack(
            children:[
              FlutterMap(
                options: MapOptions(
                  center: LatLng(17.1707, 74.6869),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate: "https://api.mapbox.com/styles/v1/sandy03/cl4mvp2wj004u14mtbvqbcqcj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FuZHkwMyIsImEiOiJjbDRtaWNiMjYwenIzM3NwYm45aTNrbm40In0.jczzMpMQ6D4bRvHcy4E8gg",
                    additionalOptions: {
                      'accessToken':'pk.eyJ1Ijoic2FuZHkwMyIsImEiOiJjbDRtaWNiMjYwenIzM3NwYm45aTNrbm40In0.jczzMpMQ6D4bRvHcy4E8gg',
                      'id':'mapbox.mapbox-streets-v8'
                    },
                  ),
                  // MarkerLayerOptions(
                  //   markers: [
                  //     Marker(
                  //       width: 80.0,
                  //       height: 80.0,
                  //       point: LatLng(51.5, -0.09),
                  //       builder: (ctx) =>
                  //           Container(
                  //             child: FlutterLogo(),
                  //           ),
                  //     ),
                  //   ],
                  // ),
                ],
                // nonRotatedChildren: [
                //   AttributionWidget.defaultWidget(
                //     source: 'OpenStreetMap contributors',
                //     onSourceTapped: () {},
                //   ),
                // ],
              ),
              //
            ]
          ),
        ),

      ),
    );
  }

}
