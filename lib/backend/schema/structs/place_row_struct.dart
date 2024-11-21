// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlaceRowStruct extends FFFirebaseStruct {
  PlaceRowStruct({
    double? latitude,
    double? longitude,
    String? title,
    String? description,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latitude = latitude,
        _longitude = longitude,
        _title = title,
        _description = description,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static PlaceRowStruct fromMap(Map<String, dynamic> data) => PlaceRowStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        title: data['title'] as String?,
        description: data['description'] as String?,
        imageUrl: data['image_url'] as String?,
      );

  static PlaceRowStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlaceRowStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
        'title': _title,
        'description': _description,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlaceRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaceRowStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlaceRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaceRowStruct &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        title == other.title &&
        description == other.description &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([latitude, longitude, title, description, imageUrl]);
}

PlaceRowStruct createPlaceRowStruct({
  double? latitude,
  double? longitude,
  String? title,
  String? description,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlaceRowStruct(
      latitude: latitude,
      longitude: longitude,
      title: title,
      description: description,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlaceRowStruct? updatePlaceRowStruct(
  PlaceRowStruct? placeRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    placeRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlaceRowStructData(
  Map<String, dynamic> firestoreData,
  PlaceRowStruct? placeRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (placeRow == null) {
    return;
  }
  if (placeRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && placeRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final placeRowData = getPlaceRowFirestoreData(placeRow, forFieldValue);
  final nestedData = placeRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = placeRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlaceRowFirestoreData(
  PlaceRowStruct? placeRow, [
  bool forFieldValue = false,
]) {
  if (placeRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(placeRow.toMap());

  // Add any Firestore field values
  placeRow.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlaceRowListFirestoreData(
  List<PlaceRowStruct>? placeRows,
) =>
    placeRows?.map((e) => getPlaceRowFirestoreData(e, true)).toList() ?? [];
