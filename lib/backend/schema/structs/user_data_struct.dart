// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends FFFirebaseStruct {
  UserDataStruct({
    String? nombre,
    String? contrasena,
    RolUsuario? rol,
    int? id,
    String? authToken,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _contrasena = contrasena,
        _rol = rol,
        _id = id,
        _authToken = authToken,
        super(firestoreUtilData);

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  set contrasena(String? val) => _contrasena = val;

  bool hasContrasena() => _contrasena != null;

  // "rol" field.
  RolUsuario? _rol;
  RolUsuario? get rol => _rol;
  set rol(RolUsuario? val) => _rol = val;

  bool hasRol() => _rol != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "authToken" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  set authToken(String? val) => _authToken = val;

  bool hasAuthToken() => _authToken != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        nombre: data['nombre'] as String?,
        contrasena: data['contrasena'] as String?,
        rol: deserializeEnum<RolUsuario>(data['rol']),
        id: castToType<int>(data['id']),
        authToken: data['authToken'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'contrasena': _contrasena,
        'rol': _rol?.serialize(),
        'id': _id,
        'authToken': _authToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'contrasena': serializeParam(
          _contrasena,
          ParamType.String,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.Enum,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'authToken': serializeParam(
          _authToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        contrasena: deserializeParam(
          data['contrasena'],
          ParamType.String,
          false,
        ),
        rol: deserializeParam<RolUsuario>(
          data['rol'],
          ParamType.Enum,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        authToken: deserializeParam(
          data['authToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        nombre == other.nombre &&
        contrasena == other.contrasena &&
        rol == other.rol &&
        id == other.id &&
        authToken == other.authToken;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nombre, contrasena, rol, id, authToken]);
}

UserDataStruct createUserDataStruct({
  String? nombre,
  String? contrasena,
  RolUsuario? rol,
  int? id,
  String? authToken,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserDataStruct(
      nombre: nombre,
      contrasena: contrasena,
      rol: rol,
      id: id,
      authToken: authToken,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserDataStruct? updateUserDataStruct(
  UserDataStruct? userData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserDataStructData(
  Map<String, dynamic> firestoreData,
  UserDataStruct? userData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userData == null) {
    return;
  }
  if (userData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userDataData = getUserDataFirestoreData(userData, forFieldValue);
  final nestedData = userDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserDataFirestoreData(
  UserDataStruct? userData, [
  bool forFieldValue = false,
]) {
  if (userData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userData.toMap());

  // Add any Firestore field values
  userData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserDataListFirestoreData(
  List<UserDataStruct>? userDatas,
) =>
    userDatas?.map((e) => getUserDataFirestoreData(e, true)).toList() ?? [];
