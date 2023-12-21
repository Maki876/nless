// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_maps extends StatefulWidget {
  const Google_maps({super.key});

  @override
  State<Google_maps> createState() => _Google_mapsState();
}

class _Google_mapsState extends State<Google_maps> {
//  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialCPosition =
      CameraPosition(target: LatLng(38.15478, -123.78945), zoom: 60);
//   static CameraPosition targetposition =
//       const CameraPosition(target: LatLng(33.15478, -135.78945), zoom: 60);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCPosition,
      ),
    );
  }
}
//  appBar: AppBar(title: const Text('Maps')),
//         body: Stack(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: double.infinity,
//               child: const GoogleMap(
//                 initialCameraPosition:
//                     CameraPosition(target: LatLng(30, -10), zoom: 10),
//               ),
//             )
//           ],
//         ));
