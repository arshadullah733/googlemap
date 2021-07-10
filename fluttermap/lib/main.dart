import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()
{
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    title: 'flutter map',

  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(target: LatLng(30.3753,-69.3451),zoom: 15.0),

      ),
    );
  }
}
