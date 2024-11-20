// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MarcaVehiculoStruct extends FFFirebaseStruct {
  MarcaVehiculoStruct({
    int? id,
    String? nombre,
    String? logo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nombre = nombre,
        _logo = logo,
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

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  static MarcaVehiculoStruct fromMap(Map<String, dynamic> data) =>
      MarcaVehiculoStruct(
        id: castToType<int>(data['id']),
        nombre: data['nombre'] as String?,
        logo: data['logo'] as String?,
      );

  static MarcaVehiculoStruct? maybeFromMap(dynamic data) => data is Map
      ? MarcaVehiculoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nombre': _nombre,
        'logo': _logo,
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
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
      }.withoutNulls;

  static MarcaVehiculoStruct fromSerializableMap(Map<String, dynamic> data) =>
      MarcaVehiculoStruct(
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
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MarcaVehiculoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MarcaVehiculoStruct &&
        id == other.id &&
        nombre == other.nombre &&
        logo == other.logo;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nombre, logo]);
}

MarcaVehiculoStruct createMarcaVehiculoStruct({
  int? id,
  String? nombre,
  String? logo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MarcaVehiculoStruct(
      id: id,
      nombre: nombre,
      logo: logo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MarcaVehiculoStruct? updateMarcaVehiculoStruct(
  MarcaVehiculoStruct? marcaVehiculo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    marcaVehiculo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMarcaVehiculoStructData(
  Map<String, dynamic> firestoreData,
  MarcaVehiculoStruct? marcaVehiculo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (marcaVehiculo == null) {
    return;
  }
  if (marcaVehiculo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && marcaVehiculo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final marcaVehiculoData =
      getMarcaVehiculoFirestoreData(marcaVehiculo, forFieldValue);
  final nestedData =
      marcaVehiculoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = marcaVehiculo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMarcaVehiculoFirestoreData(
  MarcaVehiculoStruct? marcaVehiculo, [
  bool forFieldValue = false,
]) {
  if (marcaVehiculo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(marcaVehiculo.toMap());

  // Add any Firestore field values
  marcaVehiculo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMarcaVehiculoListFirestoreData(
  List<MarcaVehiculoStruct>? marcaVehiculos,
) =>
    marcaVehiculos
        ?.map((e) => getMarcaVehiculoFirestoreData(e, true))
        .toList() ??
    [];
