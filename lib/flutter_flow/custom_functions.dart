import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

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

RolUsuario? fromStringToRol(String? cadena) {
  if (cadena == "Operador") {
    return RolUsuario.Operador;
  }

  switch (cadena) {
    case "Operador":
      return RolUsuario.Operador;
      break;
    case "Mantenimiento":
      return RolUsuario.Mantenimiento;
      break;
    case "Supervisor":
      return RolUsuario.Supervisor;
      break;
    case "Administrativo":
      return RolUsuario.Administrativo;
      break;
    default:
      return RolUsuario.Operador;
  }
}

bool? isActivelyUsingApp(DateTime? lastTimeUsed) {
  // Obtén el tiempo actual
  DateTime currentTime = DateTime.now();

  // Calcula la diferencia en minutos entre el tiempo actual y lastTimeUsed
  int differenceInMinutes = currentTime.difference(lastTimeUsed!).inMinutes;

  // Retorna verdadero si la diferencia es menor o igual a 15 minutos, falso si es mayor
  return differenceInMinutes <= 15;
}

int? nowThisMoment() {
  // return the unix timestamp of now
  return DateTime.now().millisecondsSinceEpoch;
}

int convertToInt(double? entrada) {
  // Convert input to int, if none or is imposible to convert, return 0
  try {
    if (entrada != null) {
      return entrada.toInt();
    }
  } catch (e) {
    // Do nothing, return 0 at the end
  }
  return 0;
}
