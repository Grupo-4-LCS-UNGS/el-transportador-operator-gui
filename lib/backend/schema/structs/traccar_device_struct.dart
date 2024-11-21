// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TraccarDeviceStruct extends FFFirebaseStruct {
  TraccarDeviceStruct({
    int? id,
    String? name,
    String? status,
    bool? disabled,
    String? lastUpdate,
    int? positionId,
    int? groupId,
    String? phone,
    String? modelo,
    String? contact,
    String? category,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _status = status,
        _disabled = disabled,
        _lastUpdate = lastUpdate,
        _positionId = positionId,
        _groupId = groupId,
        _phone = phone,
        _modelo = modelo,
        _contact = contact,
        _category = category,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "disabled" field.
  bool? _disabled;
  bool get disabled => _disabled ?? false;
  set disabled(bool? val) => _disabled = val;

  bool hasDisabled() => _disabled != null;

  // "lastUpdate" field.
  String? _lastUpdate;
  String get lastUpdate => _lastUpdate ?? '';
  set lastUpdate(String? val) => _lastUpdate = val;

  bool hasLastUpdate() => _lastUpdate != null;

  // "positionId" field.
  int? _positionId;
  int get positionId => _positionId ?? 0;
  set positionId(int? val) => _positionId = val;

  void incrementPositionId(int amount) => positionId = positionId + amount;

  bool hasPositionId() => _positionId != null;

  // "groupId" field.
  int? _groupId;
  int get groupId => _groupId ?? 0;
  set groupId(int? val) => _groupId = val;

  void incrementGroupId(int amount) => groupId = groupId + amount;

  bool hasGroupId() => _groupId != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;

  bool hasModelo() => _modelo != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  static TraccarDeviceStruct fromMap(Map<String, dynamic> data) =>
      TraccarDeviceStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        status: data['status'] as String?,
        disabled: data['disabled'] as bool?,
        lastUpdate: data['lastUpdate'] as String?,
        positionId: castToType<int>(data['positionId']),
        groupId: castToType<int>(data['groupId']),
        phone: data['phone'] as String?,
        modelo: data['modelo'] as String?,
        contact: data['contact'] as String?,
        category: data['category'] as String?,
      );

  static TraccarDeviceStruct? maybeFromMap(dynamic data) => data is Map
      ? TraccarDeviceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'status': _status,
        'disabled': _disabled,
        'lastUpdate': _lastUpdate,
        'positionId': _positionId,
        'groupId': _groupId,
        'phone': _phone,
        'modelo': _modelo,
        'contact': _contact,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'disabled': serializeParam(
          _disabled,
          ParamType.bool,
        ),
        'lastUpdate': serializeParam(
          _lastUpdate,
          ParamType.String,
        ),
        'positionId': serializeParam(
          _positionId,
          ParamType.int,
        ),
        'groupId': serializeParam(
          _groupId,
          ParamType.int,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static TraccarDeviceStruct fromSerializableMap(Map<String, dynamic> data) =>
      TraccarDeviceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        disabled: deserializeParam(
          data['disabled'],
          ParamType.bool,
          false,
        ),
        lastUpdate: deserializeParam(
          data['lastUpdate'],
          ParamType.String,
          false,
        ),
        positionId: deserializeParam(
          data['positionId'],
          ParamType.int,
          false,
        ),
        groupId: deserializeParam(
          data['groupId'],
          ParamType.int,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        contact: deserializeParam(
          data['contact'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TraccarDeviceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TraccarDeviceStruct &&
        id == other.id &&
        name == other.name &&
        status == other.status &&
        disabled == other.disabled &&
        lastUpdate == other.lastUpdate &&
        positionId == other.positionId &&
        groupId == other.groupId &&
        phone == other.phone &&
        modelo == other.modelo &&
        contact == other.contact &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        status,
        disabled,
        lastUpdate,
        positionId,
        groupId,
        phone,
        modelo,
        contact,
        category
      ]);
}

TraccarDeviceStruct createTraccarDeviceStruct({
  int? id,
  String? name,
  String? status,
  bool? disabled,
  String? lastUpdate,
  int? positionId,
  int? groupId,
  String? phone,
  String? modelo,
  String? contact,
  String? category,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TraccarDeviceStruct(
      id: id,
      name: name,
      status: status,
      disabled: disabled,
      lastUpdate: lastUpdate,
      positionId: positionId,
      groupId: groupId,
      phone: phone,
      modelo: modelo,
      contact: contact,
      category: category,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TraccarDeviceStruct? updateTraccarDeviceStruct(
  TraccarDeviceStruct? traccarDevice, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    traccarDevice
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTraccarDeviceStructData(
  Map<String, dynamic> firestoreData,
  TraccarDeviceStruct? traccarDevice,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (traccarDevice == null) {
    return;
  }
  if (traccarDevice.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && traccarDevice.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final traccarDeviceData =
      getTraccarDeviceFirestoreData(traccarDevice, forFieldValue);
  final nestedData =
      traccarDeviceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = traccarDevice.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTraccarDeviceFirestoreData(
  TraccarDeviceStruct? traccarDevice, [
  bool forFieldValue = false,
]) {
  if (traccarDevice == null) {
    return {};
  }
  final firestoreData = mapToFirestore(traccarDevice.toMap());

  // Add any Firestore field values
  traccarDevice.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTraccarDeviceListFirestoreData(
  List<TraccarDeviceStruct>? traccarDevices,
) =>
    traccarDevices
        ?.map((e) => getTraccarDeviceFirestoreData(e, true))
        .toList() ??
    [];
