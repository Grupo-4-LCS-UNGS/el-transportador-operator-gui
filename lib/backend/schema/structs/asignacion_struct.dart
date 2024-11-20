// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsignacionStruct extends FFFirebaseStruct {
  AsignacionStruct({
    int? id,
    VehiculoStruct? vehiculo,
    UserDataStruct? usuario,
    DateTime? fechaHoraAsignacion,
    DateTime? fechaHoraDesasignacion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _vehiculo = vehiculo,
        _usuario = usuario,
        _fechaHoraAsignacion = fechaHoraAsignacion,
        _fechaHoraDesasignacion = fechaHoraDesasignacion,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "vehiculo" field.
  VehiculoStruct? _vehiculo;
  VehiculoStruct get vehiculo => _vehiculo ?? VehiculoStruct();
  set vehiculo(VehiculoStruct? val) => _vehiculo = val;

  void updateVehiculo(Function(VehiculoStruct) updateFn) {
    updateFn(_vehiculo ??= VehiculoStruct());
  }

  bool hasVehiculo() => _vehiculo != null;

  // "usuario" field.
  UserDataStruct? _usuario;
  UserDataStruct get usuario => _usuario ?? UserDataStruct();
  set usuario(UserDataStruct? val) => _usuario = val;

  void updateUsuario(Function(UserDataStruct) updateFn) {
    updateFn(_usuario ??= UserDataStruct());
  }

  bool hasUsuario() => _usuario != null;

  // "fecha_hora_asignacion" field.
  DateTime? _fechaHoraAsignacion;
  DateTime? get fechaHoraAsignacion => _fechaHoraAsignacion;
  set fechaHoraAsignacion(DateTime? val) => _fechaHoraAsignacion = val;

  bool hasFechaHoraAsignacion() => _fechaHoraAsignacion != null;

  // "fecha_hora_desasignacion" field.
  DateTime? _fechaHoraDesasignacion;
  DateTime? get fechaHoraDesasignacion => _fechaHoraDesasignacion;
  set fechaHoraDesasignacion(DateTime? val) => _fechaHoraDesasignacion = val;

  bool hasFechaHoraDesasignacion() => _fechaHoraDesasignacion != null;

  static AsignacionStruct fromMap(Map<String, dynamic> data) =>
      AsignacionStruct(
        id: castToType<int>(data['id']),
        vehiculo: VehiculoStruct.maybeFromMap(data['vehiculo']),
        usuario: UserDataStruct.maybeFromMap(data['usuario']),
        fechaHoraAsignacion: data['fecha_hora_asignacion'] as DateTime?,
        fechaHoraDesasignacion: data['fecha_hora_desasignacion'] as DateTime?,
      );

  static AsignacionStruct? maybeFromMap(dynamic data) => data is Map
      ? AsignacionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'vehiculo': _vehiculo?.toMap(),
        'usuario': _usuario?.toMap(),
        'fecha_hora_asignacion': _fechaHoraAsignacion,
        'fecha_hora_desasignacion': _fechaHoraDesasignacion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'vehiculo': serializeParam(
          _vehiculo,
          ParamType.DataStruct,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DataStruct,
        ),
        'fecha_hora_asignacion': serializeParam(
          _fechaHoraAsignacion,
          ParamType.DateTime,
        ),
        'fecha_hora_desasignacion': serializeParam(
          _fechaHoraDesasignacion,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AsignacionStruct fromSerializableMap(Map<String, dynamic> data) =>
      AsignacionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        vehiculo: deserializeStructParam(
          data['vehiculo'],
          ParamType.DataStruct,
          false,
          structBuilder: VehiculoStruct.fromSerializableMap,
        ),
        usuario: deserializeStructParam(
          data['usuario'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDataStruct.fromSerializableMap,
        ),
        fechaHoraAsignacion: deserializeParam(
          data['fecha_hora_asignacion'],
          ParamType.DateTime,
          false,
        ),
        fechaHoraDesasignacion: deserializeParam(
          data['fecha_hora_desasignacion'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AsignacionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AsignacionStruct &&
        id == other.id &&
        vehiculo == other.vehiculo &&
        usuario == other.usuario &&
        fechaHoraAsignacion == other.fechaHoraAsignacion &&
        fechaHoraDesasignacion == other.fechaHoraDesasignacion;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, vehiculo, usuario, fechaHoraAsignacion, fechaHoraDesasignacion]);
}

AsignacionStruct createAsignacionStruct({
  int? id,
  VehiculoStruct? vehiculo,
  UserDataStruct? usuario,
  DateTime? fechaHoraAsignacion,
  DateTime? fechaHoraDesasignacion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AsignacionStruct(
      id: id,
      vehiculo: vehiculo ?? (clearUnsetFields ? VehiculoStruct() : null),
      usuario: usuario ?? (clearUnsetFields ? UserDataStruct() : null),
      fechaHoraAsignacion: fechaHoraAsignacion,
      fechaHoraDesasignacion: fechaHoraDesasignacion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AsignacionStruct? updateAsignacionStruct(
  AsignacionStruct? asignacion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    asignacion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAsignacionStructData(
  Map<String, dynamic> firestoreData,
  AsignacionStruct? asignacion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (asignacion == null) {
    return;
  }
  if (asignacion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && asignacion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final asignacionData = getAsignacionFirestoreData(asignacion, forFieldValue);
  final nestedData = asignacionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = asignacion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAsignacionFirestoreData(
  AsignacionStruct? asignacion, [
  bool forFieldValue = false,
]) {
  if (asignacion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(asignacion.toMap());

  // Handle nested data for "vehiculo" field.
  addVehiculoStructData(
    firestoreData,
    asignacion.hasVehiculo() ? asignacion.vehiculo : null,
    'vehiculo',
    forFieldValue,
  );

  // Handle nested data for "usuario" field.
  addUserDataStructData(
    firestoreData,
    asignacion.hasUsuario() ? asignacion.usuario : null,
    'usuario',
    forFieldValue,
  );

  // Add any Firestore field values
  asignacion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAsignacionListFirestoreData(
  List<AsignacionStruct>? asignacions,
) =>
    asignacions?.map((e) => getAsignacionFirestoreData(e, true)).toList() ?? [];
