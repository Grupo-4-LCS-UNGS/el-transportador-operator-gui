// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModeloAutoStruct extends FFFirebaseStruct {
  ModeloAutoStruct({
    int? id,
    double? litroxX100Km,
    String? nombre,
    int? anio,
    MarcaVehiculoStruct? marcaVehiculo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _litroxX100Km = litroxX100Km,
        _nombre = nombre,
        _anio = anio,
        _marcaVehiculo = marcaVehiculo,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "litroxX100Km" field.
  double? _litroxX100Km;
  double get litroxX100Km => _litroxX100Km ?? 0.0;
  set litroxX100Km(double? val) => _litroxX100Km = val;

  void incrementLitroxX100Km(double amount) =>
      litroxX100Km = litroxX100Km + amount;

  bool hasLitroxX100Km() => _litroxX100Km != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "anio" field.
  int? _anio;
  int get anio => _anio ?? 0;
  set anio(int? val) => _anio = val;

  void incrementAnio(int amount) => anio = anio + amount;

  bool hasAnio() => _anio != null;

  // "marca_vehiculo" field.
  MarcaVehiculoStruct? _marcaVehiculo;
  MarcaVehiculoStruct get marcaVehiculo =>
      _marcaVehiculo ?? MarcaVehiculoStruct();
  set marcaVehiculo(MarcaVehiculoStruct? val) => _marcaVehiculo = val;

  void updateMarcaVehiculo(Function(MarcaVehiculoStruct) updateFn) {
    updateFn(_marcaVehiculo ??= MarcaVehiculoStruct());
  }

  bool hasMarcaVehiculo() => _marcaVehiculo != null;

  static ModeloAutoStruct fromMap(Map<String, dynamic> data) =>
      ModeloAutoStruct(
        id: castToType<int>(data['id']),
        litroxX100Km: castToType<double>(data['litroxX100Km']),
        nombre: data['nombre'] as String?,
        anio: castToType<int>(data['anio']),
        marcaVehiculo: MarcaVehiculoStruct.maybeFromMap(data['marca_vehiculo']),
      );

  static ModeloAutoStruct? maybeFromMap(dynamic data) => data is Map
      ? ModeloAutoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'litroxX100Km': _litroxX100Km,
        'nombre': _nombre,
        'anio': _anio,
        'marca_vehiculo': _marcaVehiculo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'litroxX100Km': serializeParam(
          _litroxX100Km,
          ParamType.double,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'anio': serializeParam(
          _anio,
          ParamType.int,
        ),
        'marca_vehiculo': serializeParam(
          _marcaVehiculo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ModeloAutoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModeloAutoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        litroxX100Km: deserializeParam(
          data['litroxX100Km'],
          ParamType.double,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        anio: deserializeParam(
          data['anio'],
          ParamType.int,
          false,
        ),
        marcaVehiculo: deserializeStructParam(
          data['marca_vehiculo'],
          ParamType.DataStruct,
          false,
          structBuilder: MarcaVehiculoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ModeloAutoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModeloAutoStruct &&
        id == other.id &&
        litroxX100Km == other.litroxX100Km &&
        nombre == other.nombre &&
        anio == other.anio &&
        marcaVehiculo == other.marcaVehiculo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, litroxX100Km, nombre, anio, marcaVehiculo]);
}

ModeloAutoStruct createModeloAutoStruct({
  int? id,
  double? litroxX100Km,
  String? nombre,
  int? anio,
  MarcaVehiculoStruct? marcaVehiculo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ModeloAutoStruct(
      id: id,
      litroxX100Km: litroxX100Km,
      nombre: nombre,
      anio: anio,
      marcaVehiculo:
          marcaVehiculo ?? (clearUnsetFields ? MarcaVehiculoStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ModeloAutoStruct? updateModeloAutoStruct(
  ModeloAutoStruct? modeloAuto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    modeloAuto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addModeloAutoStructData(
  Map<String, dynamic> firestoreData,
  ModeloAutoStruct? modeloAuto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (modeloAuto == null) {
    return;
  }
  if (modeloAuto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && modeloAuto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final modeloAutoData = getModeloAutoFirestoreData(modeloAuto, forFieldValue);
  final nestedData = modeloAutoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = modeloAuto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getModeloAutoFirestoreData(
  ModeloAutoStruct? modeloAuto, [
  bool forFieldValue = false,
]) {
  if (modeloAuto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(modeloAuto.toMap());

  // Handle nested data for "marca_vehiculo" field.
  addMarcaVehiculoStructData(
    firestoreData,
    modeloAuto.hasMarcaVehiculo() ? modeloAuto.marcaVehiculo : null,
    'marca_vehiculo',
    forFieldValue,
  );

  // Add any Firestore field values
  modeloAuto.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getModeloAutoListFirestoreData(
  List<ModeloAutoStruct>? modeloAutos,
) =>
    modeloAutos?.map((e) => getModeloAutoFirestoreData(e, true)).toList() ?? [];
