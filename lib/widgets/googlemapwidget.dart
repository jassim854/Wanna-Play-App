import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatelessWidget {
  GoogleMapWidget({super.key});
  GoogleMapController? googleMapController;
  Set<Marker> markers = {};
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      markers: markers,
      zoomControlsEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(
        target: LatLng(37.42796133580664, -122.085749655962),
        zoom: 14,
      ),
      onMapCreated: (GoogleMapController controller) {
        googleMapController = controller;
      },
    );
  }
}