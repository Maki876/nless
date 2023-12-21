import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googlemap extends StatefulWidget {
  const googlemap({super.key});

  @override
  State<googlemap> createState() => _Deliver_ScreenState();
}

class _Deliver_ScreenState extends State<googlemap> {
  final Completer<GoogleMapController> controller = Completer();

  static const LatLng sourceLocation = LatLng(37.3350092, -122.0327188);
  // static LatLng destination = LatLng(37.33429383, -122.0660055);
  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('source'),
      position: sourceLocation,
      infoWindow: InfoWindow(title: 'Your Location'),
      icon: BitmapDescriptor.defaultMarker,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition:
            CameraPosition(target: sourceLocation, zoom: 14.5),
        markers: _markers,
      ),
    );
  }
}
