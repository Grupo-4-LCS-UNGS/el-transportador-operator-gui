// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PosicionesDeClienteStruct extends FFFirebaseStruct {
  PosicionesDeClienteStruct({
    ClienteStruct? cliente,
    int? id,
    int? idCliente,
    double? latitud,
    double? longitud,
    String? nombre,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cliente = cliente,
        _id = id,
        _idCliente = idCliente,
        _latitud = latitud,
        _longitud = longitud,
        _nombre = nombre,
        super(firestoreUtilData);

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  set cliente(ClienteStruct? val) => _cliente = val;

  void updateCliente(Function(ClienteStruct) updateFn) {
    updateFn(_cliente ??= ClienteStruct());
  }

  bool hasCliente() => _cliente != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "id_cliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  set idCliente(int? val) => _idCliente = val;

  void incrementIdCliente(int amount) => idCliente = idCliente + amount;

  bool hasIdCliente() => _idCliente != null;

  // "latitud" field.
  double? _latitud;
  double get latitud => _latitud ?? 0.0;
  set latitud(double? val) => _latitud = val;

  void incrementLatitud(double amount) => latitud = latitud + amount;

  bool hasLatitud() => _latitud != null;

  // "longitud" field.
  double? _longitud;
  double get longitud => _longitud ?? 0.0;
  set longitud(double? val) => _longitud = val;

  void incrementLongitud(double amount) => longitud = longitud + amount;

  bool hasLongitud() => _longitud != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static PosicionesDeClienteStruct fromMap(Map<String, dynamic> data) =>
      PosicionesDeClienteStruct(
        cliente: ClienteStruct.maybeFromMap(data['cliente']),
        id: castToType<int>(data['id']),
        idCliente: castToType<int>(data['id_cliente']),
        latitud: castToType<double>(data['latitud']),
        longitud: castToType<double>(data['longitud']),
        nombre: data['nombre'] as String?,
      );

  static PosicionesDeClienteStruct? maybeFromMap(dynamic data) => data is Map
      ? PosicionesDeClienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cliente': _cliente?.toMap(),
        'id': _id,
        'id_cliente': _idCliente,
        'latitud': _latitud,
        'longitud': _longitud,
        'nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cliente': serializeParam(
          _cliente,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'id_cliente': serializeParam(
          _idCliente,
          ParamType.int,
        ),
        'latitud': serializeParam(
          _latitud,
          ParamType.double,
        ),
        'longitud': serializeParam(
          _longitud,
          ParamType.double,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static PosicionesDeClienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PosicionesDeClienteStruct(
        cliente: deserializeStructParam(
          data['cliente'],
          ParamType.DataStruct,
          false,
          structBuilder: ClienteStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idCliente: deserializeParam(
          data['id_cliente'],
          ParamType.int,
          false,
        ),
        latitud: deserializeParam(
          data['latitud'],
          ParamType.double,
          false,
        ),
        longitud: deserializeParam(
          data['longitud'],
          ParamType.double,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PosicionesDeClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PosicionesDeClienteStruct &&
        cliente == other.cliente &&
        id == other.id &&
        idCliente == other.idCliente &&
        latitud == other.latitud &&
        longitud == other.longitud &&
        nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cliente, id, idCliente, latitud, longitud, nombre]);
}

PosicionesDeClienteStruct createPosicionesDeClienteStruct({
  ClienteStruct? cliente,
  int? id,
  int? idCliente,
  double? latitud,
  double? longitud,
  String? nombre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PosicionesDeClienteStruct(
      cliente: cliente ?? (clearUnsetFields ? ClienteStruct() : null),
      id: id,
      idCliente: idCliente,
      latitud: latitud,
      longitud: longitud,
      nombre: nombre,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PosicionesDeClienteStruct? updatePosicionesDeClienteStruct(
  PosicionesDeClienteStruct? posicionesDeCliente, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    posicionesDeCliente
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPosicionesDeClienteStructData(
  Map<String, dynamic> firestoreData,
  PosicionesDeClienteStruct? posicionesDeCliente,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (posicionesDeCliente == null) {
    return;
  }
  if (posicionesDeCliente.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && posicionesDeCliente.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final posicionesDeClienteData =
      getPosicionesDeClienteFirestoreData(posicionesDeCliente, forFieldValue);
  final nestedData =
      posicionesDeClienteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      posicionesDeCliente.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPosicionesDeClienteFirestoreData(
  PosicionesDeClienteStruct? posicionesDeCliente, [
  bool forFieldValue = false,
]) {
  if (posicionesDeCliente == null) {
    return {};
  }
  final firestoreData = mapToFirestore(posicionesDeCliente.toMap());

  // Handle nested data for "cliente" field.
  addClienteStructData(
    firestoreData,
    posicionesDeCliente.hasCliente() ? posicionesDeCliente.cliente : null,
    'cliente',
    forFieldValue,
  );

  // Add any Firestore field values
  posicionesDeCliente.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPosicionesDeClienteListFirestoreData(
  List<PosicionesDeClienteStruct>? posicionesDeClientes,
) =>
    posicionesDeClientes
        ?.map((e) => getPosicionesDeClienteFirestoreData(e, true))
        .toList() ??
    [];
