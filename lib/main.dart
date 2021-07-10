
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main()
{
  runApp(MaterialApp(
    title: 'google map',
    debugShowCheckedModeBanner: false,
    color: Colors.blueGrey,
    home: Home(),

  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GoogleMapController mapController;
  final CameraPosition _camperaPosition=  CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Google map'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              height: 500.0,
              width: 300,
              child: GoogleMap(
                onMapCreated: (controller)
                {
                  setState(() {
                    mapController=controller;
                  });
                },
                initialCameraPosition: _camperaPosition ,
                mapType: MapType.hybrid,

              ),

            )
          ],
        ) ,
      ),
    );
  }
}






