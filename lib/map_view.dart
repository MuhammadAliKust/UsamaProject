import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatelessWidget {
  GoogleMapView({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.6995, 73.0363),
        infoWindow: InfoWindow(title: "Islamabad")),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(34.6995, 73.0363),
        infoWindow: InfoWindow(title: "Second Location")),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(35.6995, 73.0363),
        infoWindow: InfoWindow(title: "Third Location")),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map View"),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(
          target: LatLng(33.6995, 73.0363),
          zoom: 13.4746,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
