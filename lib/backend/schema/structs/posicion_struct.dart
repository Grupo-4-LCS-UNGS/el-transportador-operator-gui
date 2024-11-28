// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PosicionStruct extends FFFirebaseStruct {
  PosicionStruct({
    List<LatLng>? posicionesLatLong,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _posicionesLatLong = posicionesLatLong,
        super(firestoreUtilData);

  // "posicionesLatLong" field.
  List<LatLng>? _posicionesLatLong;
  List<LatLng> get posicionesLatLong => _posicionesLatLong ?? const [];
  set posicionesLatLong(List<LatLng>? val) => _posicionesLatLong = val;

  void updatePosicionesLatLong(Function(List<LatLng>) updateFn) {
    updateFn(_posicionesLatLong ??= []);
  }

  bool hasPosicionesLatLong() => _posicionesLatLong != null;

  static PosicionStruct fromMap(Map<String, dynamic> data) => PosicionStruct(
        posicionesLatLong: getDataList(data['posicionesLatLong']),
      );

  static PosicionStruct? maybeFromMap(dynamic data) =>
      data is Map ? PosicionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'posicionesLatLong': _posicionesLatLong,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'posicionesLatLong': serializeParam(
          _posicionesLatLong,
          ParamType.LatLng,
          isList: true,
        ),
      }.withoutNulls;

  static PosicionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PosicionStruct(
        posicionesLatLong: deserializeParam<LatLng>(
          data['posicionesLatLong'],
          ParamType.LatLng,
          true,
        ),
      );

  @override
  String toString() => 'PosicionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PosicionStruct &&
        listEquality.equals(posicionesLatLong, other.posicionesLatLong);
  }

  @override
  int get hashCode => const ListEquality().hash([posicionesLatLong]);
}

PosicionStruct createPosicionStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PosicionStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PosicionStruct? updatePosicionStruct(
  PosicionStruct? posicion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    posicion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPosicionStructData(
  Map<String, dynamic> firestoreData,
  PosicionStruct? posicion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (posicion == null) {
    return;
  }
  if (posicion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && posicion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final posicionData = getPosicionFirestoreData(posicion, forFieldValue);
  final nestedData = posicionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = posicion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPosicionFirestoreData(
  PosicionStruct? posicion, [
  bool forFieldValue = false,
]) {
  if (posicion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(posicion.toMap());

  // Add any Firestore field values
  posicion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPosicionListFirestoreData(
  List<PosicionStruct>? posicions,
) =>
    posicions?.map((e) => getPosicionFirestoreData(e, true)).toList() ?? [];
