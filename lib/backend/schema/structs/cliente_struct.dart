// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends FFFirebaseStruct {
  ClienteStruct({
    String? contrasena,
    String? cuit,
    String? direccion,
    String? email,
    int? id,
    String? nombre,
    OperadorStruct? operador,
    String? telefono,
    String? usuarioCliente,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contrasena = contrasena,
        _cuit = cuit,
        _direccion = direccion,
        _email = email,
        _id = id,
        _nombre = nombre,
        _operador = operador,
        _telefono = telefono,
        _usuarioCliente = usuarioCliente,
        super(firestoreUtilData);

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  set contrasena(String? val) => _contrasena = val;

  bool hasContrasena() => _contrasena != null;

  // "cuit" field.
  String? _cuit;
  String get cuit => _cuit ?? '';
  set cuit(String? val) => _cuit = val;

  bool hasCuit() => _cuit != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

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

  // "operador" field.
  OperadorStruct? _operador;
  OperadorStruct get operador => _operador ?? OperadorStruct();
  set operador(OperadorStruct? val) => _operador = val;

  void updateOperador(Function(OperadorStruct) updateFn) {
    updateFn(_operador ??= OperadorStruct());
  }

  bool hasOperador() => _operador != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "usuario_cliente" field.
  String? _usuarioCliente;
  String get usuarioCliente => _usuarioCliente ?? '';
  set usuarioCliente(String? val) => _usuarioCliente = val;

  bool hasUsuarioCliente() => _usuarioCliente != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        contrasena: data['contrasena'] as String?,
        cuit: data['cuit'] as String?,
        direccion: data['direccion'] as String?,
        email: data['email'] as String?,
        id: castToType<int>(data['id']),
        nombre: data['nombre'] as String?,
        operador: OperadorStruct.maybeFromMap(data['operador']),
        telefono: data['telefono'] as String?,
        usuarioCliente: data['usuario_cliente'] as String?,
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'contrasena': _contrasena,
        'cuit': _cuit,
        'direccion': _direccion,
        'email': _email,
        'id': _id,
        'nombre': _nombre,
        'operador': _operador?.toMap(),
        'telefono': _telefono,
        'usuario_cliente': _usuarioCliente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contrasena': serializeParam(
          _contrasena,
          ParamType.String,
        ),
        'cuit': serializeParam(
          _cuit,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'operador': serializeParam(
          _operador,
          ParamType.DataStruct,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'usuario_cliente': serializeParam(
          _usuarioCliente,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        contrasena: deserializeParam(
          data['contrasena'],
          ParamType.String,
          false,
        ),
        cuit: deserializeParam(
          data['cuit'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
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
        operador: deserializeStructParam(
          data['operador'],
          ParamType.DataStruct,
          false,
          structBuilder: OperadorStruct.fromSerializableMap,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        usuarioCliente: deserializeParam(
          data['usuario_cliente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        contrasena == other.contrasena &&
        cuit == other.cuit &&
        direccion == other.direccion &&
        email == other.email &&
        id == other.id &&
        nombre == other.nombre &&
        operador == other.operador &&
        telefono == other.telefono &&
        usuarioCliente == other.usuarioCliente;
  }

  @override
  int get hashCode => const ListEquality().hash([
        contrasena,
        cuit,
        direccion,
        email,
        id,
        nombre,
        operador,
        telefono,
        usuarioCliente
      ]);
}

ClienteStruct createClienteStruct({
  String? contrasena,
  String? cuit,
  String? direccion,
  String? email,
  int? id,
  String? nombre,
  OperadorStruct? operador,
  String? telefono,
  String? usuarioCliente,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClienteStruct(
      contrasena: contrasena,
      cuit: cuit,
      direccion: direccion,
      email: email,
      id: id,
      nombre: nombre,
      operador: operador ?? (clearUnsetFields ? OperadorStruct() : null),
      telefono: telefono,
      usuarioCliente: usuarioCliente,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClienteStruct? updateClienteStruct(
  ClienteStruct? cliente, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cliente
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClienteStructData(
  Map<String, dynamic> firestoreData,
  ClienteStruct? cliente,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cliente == null) {
    return;
  }
  if (cliente.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cliente.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clienteData = getClienteFirestoreData(cliente, forFieldValue);
  final nestedData = clienteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cliente.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClienteFirestoreData(
  ClienteStruct? cliente, [
  bool forFieldValue = false,
]) {
  if (cliente == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cliente.toMap());

  // Handle nested data for "operador" field.
  addOperadorStructData(
    firestoreData,
    cliente.hasOperador() ? cliente.operador : null,
    'operador',
    forFieldValue,
  );

  // Add any Firestore field values
  cliente.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClienteListFirestoreData(
  List<ClienteStruct>? clientes,
) =>
    clientes?.map((e) => getClienteFirestoreData(e, true)).toList() ?? [];
