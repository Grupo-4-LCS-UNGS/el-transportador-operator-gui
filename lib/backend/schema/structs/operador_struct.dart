// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OperadorStruct extends FFFirebaseStruct {
  OperadorStruct({
    int? id,
    String? nombre,
    String? rol,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nombre = nombre,
        _rol = rol,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  set rol(String? val) => _rol = val;

  bool hasRol() => _rol != null;

  static OperadorStruct fromMap(Map<String, dynamic> data) => OperadorStruct(
        id: castToType<int>(data['id']),
        nombre: data['nombre'] as String?,
        rol: data['rol'] as String?,
      );

  static OperadorStruct? maybeFromMap(dynamic data) =>
      data is Map ? OperadorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nombre': _nombre,
        'rol': _rol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.String,
        ),
      }.withoutNulls;

  static OperadorStruct fromSerializableMap(Map<String, dynamic> data) =>
      OperadorStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        rol: deserializeParam(
          data['rol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OperadorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OperadorStruct &&
        id == other.id &&
        nombre == other.nombre &&
        rol == other.rol;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nombre, rol]);
}

OperadorStruct createOperadorStruct({
  int? id,
  String? nombre,
  String? rol,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OperadorStruct(
      id: id,
      nombre: nombre,
      rol: rol,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OperadorStruct? updateOperadorStruct(
  OperadorStruct? operador, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    operador
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOperadorStructData(
  Map<String, dynamic> firestoreData,
  OperadorStruct? operador,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (operador == null) {
    return;
  }
  if (operador.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && operador.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final operadorData = getOperadorFirestoreData(operador, forFieldValue);
  final nestedData = operadorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = operador.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOperadorFirestoreData(
  OperadorStruct? operador, [
  bool forFieldValue = false,
]) {
  if (operador == null) {
    return {};
  }
  final firestoreData = mapToFirestore(operador.toMap());

  // Add any Firestore field values
  operador.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOperadorListFirestoreData(
  List<OperadorStruct>? operadors,
) =>
    operadors?.map((e) => getOperadorFirestoreData(e, true)).toList() ?? [];
