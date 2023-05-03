// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({Key? key}) : super(key: key);

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();

//   // static const CameraPosition _kGooglePlex = CameraPosition(
//   //   target: LatLng(17.952757, 102.620834),
//   //   zoom: 14.4746,
//   // );

//   // static const CameraPosition _kLake = CameraPosition(
//   //     bearing: 192.8334901395799,
//   //     target: LatLng(17.952757, 102.620834),
//   //     tilt: 59.440717697143555,
//   //     zoom: 19.151926040649414);
//   late String address = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: OpenStreetMapSearchAndPick(

//             center: LatLong(17.952757, 102.620834),
//             buttonColor: Colors.blue,
//             buttonText: 'Set Current Location',
//             onPicked: (pickedData) {
//               print(pickedData.latLong.latitude);
//               print(pickedData.latLong.longitude);
//               print(pickedData.address);
//             }));
   
//   }

//   // Future<void> _goToTheLake() async {
  
//   //   final GoogleMapController controller = await _controller.future;
//   //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   // }
// }st