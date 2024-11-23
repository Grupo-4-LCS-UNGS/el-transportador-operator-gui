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
    double? distanciaRecorrida,
    double? distanciaInicial,
    double? distanciaFinal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _vehiculo = vehiculo,
        _usuario = usuario,
        _fechaHoraAsignacion = fechaHoraAsignacion,
        _fechaHoraDesasignacion = fechaHoraDesasignacion,
        _distanciaRecorrida = distanciaRecorrida,
        _distanciaInicial = distanciaInicial,
        _distanciaFinal = distanciaFinal,
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

  // "distancia_recorrida" field.
  double? _distanciaRecorrida;
  double get distanciaRecorrida => _distanciaRecorrida ?? 0.0;
  set distanciaRecorrida(double? val) => _distanciaRecorrida = val;

  void incrementDistanciaRecorrida(double amount) =>
      distanciaRecorrida = distanciaRecorrida + amount;

  bool hasDistanciaRecorrida() => _distanciaRecorrida != null;

  // "distancia_inicial" field.
  double? _distanciaInicial;
  double get distanciaInicial => _distanciaInicial ?? 0.0;
  set distanciaInicial(double? val) => _distanciaInicial = val;

  void incrementDistanciaInicial(double amount) =>
      distanciaInicial = distanciaInicial + amount;

  bool hasDistanciaInicial() => _distanciaInicial != null;

  // "distancia_final" field.
  double? _distanciaFinal;
  double get distanciaFinal => _distanciaFinal ?? 0.0;
  set distanciaFinal(double? val) => _distanciaFinal = val;

  void incrementDistanciaFinal(double amount) =>
      distanciaFinal = distanciaFinal + amount;

  bool hasDistanciaFinal() => _distanciaFinal != null;

  static AsignacionStruct fromMap(Map<String, dynamic> data) =>
      AsignacionStruct(
        id: castToType<int>(data['id']),
        vehiculo: VehiculoStruct.maybeFromMap(data['vehiculo']),
        usuario: UserDataStruct.maybeFromMap(data['usuario']),
        fechaHoraAsignacion: data['fecha_hora_asignacion'] as DateTime?,
        fechaHoraDesasignacion: data['fecha_hora_desasignacion'] as DateTime?,
        distanciaRecorrida: castToType<double>(data['distancia_recorrida']),
        distanciaInicial: castToType<double>(data['distancia_inicial']),
        distanciaFinal: castToType<double>(data['distancia_final']),
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
        'distancia_recorrida': _distanciaRecorrida,
        'distancia_inicial': _distanciaInicial,
        'distancia_final': _distanciaFinal,
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
        'distancia_recorrida': serializeParam(
          _distanciaRecorrida,
          ParamType.double,
        ),
        'distancia_inicial': serializeParam(
          _distanciaInicial,
          ParamType.double,
        ),
        'distancia_final': serializeParam(
          _distanciaFinal,
          ParamType.double,
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
        distanciaRecorrida: deserializeParam(
          data['distancia_recorrida'],
          ParamType.double,
          false,
        ),
        distanciaInicial: deserializeParam(
          data['distancia_inicial'],
          ParamType.double,
          false,
        ),
        distanciaFinal: deserializeParam(
          data['distancia_final'],
          ParamType.double,
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
        fechaHoraDesasignacion == other.fechaHoraDesasignacion &&
        distanciaRecorrida == other.distanciaRecorrida &&
        distanciaInicial == other.distanciaInicial &&
        distanciaFinal == other.distanciaFinal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        vehiculo,
        usuario,
        fechaHoraAsignacion,
        fechaHoraDesasignacion,
        distanciaRecorrida,
        distanciaInicial,
        distanciaFinal
      ]);
}

AsignacionStruct createAsignacionStruct({
  int? id,
  VehiculoStruct? vehiculo,
  UserDataStruct? usuario,
  DateTime? fechaHoraAsignacion,
  DateTime? fechaHoraDesasignacion,
  double? distanciaRecorrida,
  double? distanciaInicial,
  double? distanciaFinal,
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
      distanciaRecorrida: distanciaRecorrida,
      distanciaInicial: distanciaInicial,
      distanciaFinal: distanciaFinal,
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
