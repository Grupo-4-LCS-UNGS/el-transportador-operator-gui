import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double latAsDouble(LatLng? gpspos) {
  // return latitude from gpspos
  if (gpspos != null) {
    return gpspos.latitude;
  } else {
    return 0.0;
  }
}

double longAsDouble(LatLng? gpspos) {
  // return latitude from gpspos
  if (gpspos != null) {
    return gpspos.longitude;
  } else {
    return 0.0;
  }
}
