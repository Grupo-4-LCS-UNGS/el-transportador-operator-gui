// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiculoStruct extends FFFirebaseStruct {
  VehiculoStruct({
    int? id,
    ModeloAutoStruct? modelo,
    int? matricula,
    String? estado,
    int? kilometraje,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _modelo = modelo,
        _matricula = matricula,
        _estado = estado,
        _kilometraje = kilometraje,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "modelo" field.
  ModeloAutoStruct? _modelo;
  ModeloAutoStruct get modelo => _modelo ?? ModeloAutoStruct();
  set modelo(ModeloAutoStruct? val) => _modelo = val;

  void updateModelo(Function(ModeloAutoStruct) updateFn) {
    updateFn(_modelo ??= ModeloAutoStruct());
  }

  bool hasModelo() => _modelo != null;

  // "matricula" field.
  int? _matricula;
  int get matricula => _matricula ?? 0;
  set matricula(int? val) => _matricula = val;

  void incrementMatricula(int amount) => matricula = matricula + amount;

  bool hasMatricula() => _matricula != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "kilometraje" field.
  int? _kilometraje;
  int get kilometraje => _kilometraje ?? 0;
  set kilometraje(int? val) => _kilometraje = val;

  void incrementKilometraje(int amount) => kilometraje = kilometraje + amount;

  bool hasKilometraje() => _kilometraje != null;

  static VehiculoStruct fromMap(Map<String, dynamic> data) => VehiculoStruct(
        id: castToType<int>(data['id']),
        modelo: ModeloAutoStruct.maybeFromMap(data['modelo']),
        matricula: castToType<int>(data['matricula']),
        estado: data['estado'] as String?,
        kilometraje: castToType<int>(data['kilometraje']),
      );

  static VehiculoStruct? maybeFromMap(dynamic data) =>
      data is Map ? VehiculoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'modelo': _modelo?.toMap(),
        'matricula': _matricula,
        'estado': _estado,
        'kilometraje': _kilometraje,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.DataStruct,
        ),
        'matricula': serializeParam(
          _matricula,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'kilometraje': serializeParam(
          _kilometraje,
          ParamType.int,
        ),
      }.withoutNulls;

  static VehiculoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VehiculoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        modelo: deserializeStructParam(
          data['modelo'],
          ParamType.DataStruct,
          false,
          structBuilder: ModeloAutoStruct.fromSerializableMap,
        ),
        matricula: deserializeParam(
          data['matricula'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        kilometraje: deserializeParam(
          data['kilometraje'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VehiculoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VehiculoStruct &&
        id == other.id &&
        modelo == other.modelo &&
        matricula == other.matricula &&
        estado == other.estado &&
        kilometraje == other.kilometraje;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, modelo, matricula, estado, kilometraje]);
}

VehiculoStruct createVehiculoStruct({
  int? id,
  ModeloAutoStruct? modelo,
  int? matricula,
  String? estado,
  int? kilometraje,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VehiculoStruct(
      id: id,
      modelo: modelo ?? (clearUnsetFields ? ModeloAutoStruct() : null),
      matricula: matricula,
      estado: estado,
      kilometraje: kilometraje,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VehiculoStruct? updateVehiculoStruct(
  VehiculoStruct? vehiculo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vehiculo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVehiculoStructData(
  Map<String, dynamic> firestoreData,
  VehiculoStruct? vehiculo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vehiculo == null) {
    return;
  }
  if (vehiculo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vehiculo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vehiculoData = getVehiculoFirestoreData(vehiculo, forFieldValue);
  final nestedData = vehiculoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vehiculo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVehiculoFirestoreData(
  VehiculoStruct? vehiculo, [
  bool forFieldValue = false,
]) {
  if (vehiculo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vehiculo.toMap());

  // Handle nested data for "modelo" field.
  addModeloAutoStructData(
    firestoreData,
    vehiculo.hasModelo() ? vehiculo.modelo : null,
    'modelo',
    forFieldValue,
  );

  // Add any Firestore field values
  vehiculo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVehiculoListFirestoreData(
  List<VehiculoStruct>? vehiculos,
) =>
    vehiculos?.map((e) => getVehiculoFirestoreData(e, true)).toList() ?? [];
