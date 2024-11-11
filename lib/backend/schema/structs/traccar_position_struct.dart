// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TraccarPositionStruct extends FFFirebaseStruct {
  TraccarPositionStruct({
    int? deviceId,
    double? latitude,
    double? longitude,
    int? altitude,
    int? speed,
    int? course,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _deviceId = deviceId,
        _latitude = latitude,
        _longitude = longitude,
        _altitude = altitude,
        _speed = speed,
        _course = course,
        super(firestoreUtilData);

  // "deviceId" field.
  int? _deviceId;
  int get deviceId => _deviceId ?? 0;
  set deviceId(int? val) => _deviceId = val;

  void incrementDeviceId(int amount) => deviceId = deviceId + amount;

  bool hasDeviceId() => _deviceId != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "altitude" field.
  int? _altitude;
  int get altitude => _altitude ?? 0;
  set altitude(int? val) => _altitude = val;

  void incrementAltitude(int amount) => altitude = altitude + amount;

  bool hasAltitude() => _altitude != null;

  // "speed" field.
  int? _speed;
  int get speed => _speed ?? 0;
  set speed(int? val) => _speed = val;

  void incrementSpeed(int amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "course" field.
  int? _course;
  int get course => _course ?? 0;
  set course(int? val) => _course = val;

  void incrementCourse(int amount) => course = course + amount;

  bool hasCourse() => _course != null;

  static TraccarPositionStruct fromMap(Map<String, dynamic> data) =>
      TraccarPositionStruct(
        deviceId: castToType<int>(data['deviceId']),
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        altitude: castToType<int>(data['altitude']),
        speed: castToType<int>(data['speed']),
        course: castToType<int>(data['course']),
      );

  static TraccarPositionStruct? maybeFromMap(dynamic data) => data is Map
      ? TraccarPositionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'deviceId': _deviceId,
        'latitude': _latitude,
        'longitude': _longitude,
        'altitude': _altitude,
        'speed': _speed,
        'course': _course,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deviceId': serializeParam(
          _deviceId,
          ParamType.int,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'altitude': serializeParam(
          _altitude,
          ParamType.int,
        ),
        'speed': serializeParam(
          _speed,
          ParamType.int,
        ),
        'course': serializeParam(
          _course,
          ParamType.int,
        ),
      }.withoutNulls;

  static TraccarPositionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TraccarPositionStruct(
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.int,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        altitude: deserializeParam(
          data['altitude'],
          ParamType.int,
          false,
        ),
        speed: deserializeParam(
          data['speed'],
          ParamType.int,
          false,
        ),
        course: deserializeParam(
          data['course'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TraccarPositionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TraccarPositionStruct &&
        deviceId == other.deviceId &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        altitude == other.altitude &&
        speed == other.speed &&
        course == other.course;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([deviceId, latitude, longitude, altitude, speed, course]);
}

TraccarPositionStruct createTraccarPositionStruct({
  int? deviceId,
  double? latitude,
  double? longitude,
  int? altitude,
  int? speed,
  int? course,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TraccarPositionStruct(
      deviceId: deviceId,
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
      speed: speed,
      course: course,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TraccarPositionStruct? updateTraccarPositionStruct(
  TraccarPositionStruct? traccarPosition, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    traccarPosition
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTraccarPositionStructData(
  Map<String, dynamic> firestoreData,
  TraccarPositionStruct? traccarPosition,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (traccarPosition == null) {
    return;
  }
  if (traccarPosition.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && traccarPosition.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final traccarPositionData =
      getTraccarPositionFirestoreData(traccarPosition, forFieldValue);
  final nestedData =
      traccarPositionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = traccarPosition.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTraccarPositionFirestoreData(
  TraccarPositionStruct? traccarPosition, [
  bool forFieldValue = false,
]) {
  if (traccarPosition == null) {
    return {};
  }
  final firestoreData = mapToFirestore(traccarPosition.toMap());

  // Add any Firestore field values
  traccarPosition.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTraccarPositionListFirestoreData(
  List<TraccarPositionStruct>? traccarPositions,
) =>
    traccarPositions
        ?.map((e) => getTraccarPositionFirestoreData(e, true))
        .toList() ??
    [];
