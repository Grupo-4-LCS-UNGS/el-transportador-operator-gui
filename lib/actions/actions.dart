import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future setBufferOfLocation(BuildContext context) async {
  LatLng currentUserLocationValue =
      await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));

  // SetLocationOnAppState
  FFAppState().ultimaPosicionInformadaAppState = currentUserLocationValue;
}
