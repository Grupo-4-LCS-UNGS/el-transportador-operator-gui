// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AttributesTraccarPositionStruct extends FFFirebaseStruct {
  AttributesTraccarPositionStruct({
    double? batteryLevel,
    bool? mock,
    double? distance,
    double? totalDistance,
    bool? motion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _batteryLevel = batteryLevel,
        _mock = mock,
        _distance = distance,
        _totalDistance = totalDistance,
        _motion = motion,
        super(firestoreUtilData);

  // "batteryLevel" field.
  double? _batteryLevel;
  double get batteryLevel => _batteryLevel ?? 0.0;
  set batteryLevel(double? val) => _batteryLevel = val;

  void incrementBatteryLevel(double amount) =>
      batteryLevel = batteryLevel + amount;

  bool hasBatteryLevel() => _batteryLevel != null;

  // "mock" field.
  bool? _mock;
  bool get mock => _mock ?? false;
  set mock(bool? val) => _mock = val;

  bool hasMock() => _mock != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "totalDistance" field.
  double? _totalDistance;
  double get totalDistance => _totalDistance ?? 0.0;
  set totalDistance(double? val) => _totalDistance = val;

  void incrementTotalDistance(double amount) =>
      totalDistance = totalDistance + amount;

  bool hasTotalDistance() => _totalDistance != null;

  // "motion" field.
  bool? _motion;
  bool get motion => _motion ?? false;
  set motion(bool? val) => _motion = val;

  bool hasMotion() => _motion != null;

  static AttributesTraccarPositionStruct fromMap(Map<String, dynamic> data) =>
      AttributesTraccarPositionStruct(
        batteryLevel: castToType<double>(data['batteryLevel']),
        mock: data['mock'] as bool?,
        distance: castToType<double>(data['distance']),
        totalDistance: castToType<double>(data['totalDistance']),
        motion: data['motion'] as bool?,
      );

  static AttributesTraccarPositionStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AttributesTraccarPositionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'batteryLevel': _batteryLevel,
        'mock': _mock,
        'distance': _distance,
        'totalDistance': _totalDistance,
        'motion': _motion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'batteryLevel': serializeParam(
          _batteryLevel,
          ParamType.double,
        ),
        'mock': serializeParam(
          _mock,
          ParamType.bool,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'totalDistance': serializeParam(
          _totalDistance,
          ParamType.double,
        ),
        'motion': serializeParam(
          _motion,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AttributesTraccarPositionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AttributesTraccarPositionStruct(
        batteryLevel: deserializeParam(
          data['batteryLevel'],
          ParamType.double,
          false,
        ),
        mock: deserializeParam(
          data['mock'],
          ParamType.bool,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        totalDistance: deserializeParam(
          data['totalDistance'],
          ParamType.double,
          false,
        ),
        motion: deserializeParam(
          data['motion'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AttributesTraccarPositionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttributesTraccarPositionStruct &&
        batteryLevel == other.batteryLevel &&
        mock == other.mock &&
        distance == other.distance &&
        totalDistance == other.totalDistance &&
        motion == other.motion;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([batteryLevel, mock, distance, totalDistance, motion]);
}

AttributesTraccarPositionStruct createAttributesTraccarPositionStruct({
  double? batteryLevel,
  bool? mock,
  double? distance,
  double? totalDistance,
  bool? motion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttributesTraccarPositionStruct(
      batteryLevel: batteryLevel,
      mock: mock,
      distance: distance,
      totalDistance: totalDistance,
      motion: motion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttributesTraccarPositionStruct? updateAttributesTraccarPositionStruct(
  AttributesTraccarPositionStruct? attributesTraccarPosition, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attributesTraccarPosition
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttributesTraccarPositionStructData(
  Map<String, dynamic> firestoreData,
  AttributesTraccarPositionStruct? attributesTraccarPosition,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attributesTraccarPosition == null) {
    return;
  }
  if (attributesTraccarPosition.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      attributesTraccarPosition.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attributesTraccarPositionData =
      getAttributesTraccarPositionFirestoreData(
          attributesTraccarPosition, forFieldValue);
  final nestedData =
      attributesTraccarPositionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      attributesTraccarPosition.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttributesTraccarPositionFirestoreData(
  AttributesTraccarPositionStruct? attributesTraccarPosition, [
  bool forFieldValue = false,
]) {
  if (attributesTraccarPosition == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attributesTraccarPosition.toMap());

  // Add any Firestore field values
  attributesTraccarPosition.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttributesTraccarPositionListFirestoreData(
  List<AttributesTraccarPositionStruct>? attributesTraccarPositions,
) =>
    attributesTraccarPositions
        ?.map((e) => getAttributesTraccarPositionFirestoreData(e, true))
        .toList() ??
    [];
