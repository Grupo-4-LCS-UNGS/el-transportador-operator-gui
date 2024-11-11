import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Traccar Group Code

class TraccarGroup {
  static String getBaseUrl() => 'https://traccar.potus.ar/api/';
  static Map<String, String> headers = {};
  static ServerCall serverCall = ServerCall();
  static DispositivosCall dispositivosCall = DispositivosCall();
  static PosicionesGetCall posicionesGetCall = PosicionesGetCall();
}

class ServerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TraccarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Server',
      apiUrl: '${baseUrl}server/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic aXR1bGFAbG9nb3MubmV0LmFyOkluVGVyMjJTb2w=',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic servidor(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class DispositivosCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TraccarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Dispositivos',
      apiUrl: '${baseUrl}devices',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic aXR1bGFAbG9nb3MubmV0LmFyOkluVGVyMjJTb2w=',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PosicionesGetCall {
  Future<ApiCallResponse> call({
    int? deviceId,
    double? latitude,
    double? longitude,
    int? altitude,
    int? speed,
    int? course,
    int? accuracy,
  }) async {
    final baseUrl = TraccarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PosicionesGet',
      apiUrl: '${baseUrl}positions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic aXR1bGFAbG9nb3MubmV0LmFyOkluVGVyMjJTb2w=',
      },
      params: {
        'deviceId': deviceId,
        'latitude': latitude,
        'longitude': longitude,
        'altitude': altitude,
        'speed': speed,
        'course': course,
        'accuracy': accuracy,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Traccar Group Code

/// Start TransportadorPostaAtuhApi Group Code

class TransportadorPostaAtuhApiGroup {
  static String getBaseUrl() => 'https://api.g4.potus.ar';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? nombre = '',
    String? contrasena = '',
  }) async {
    final baseUrl = TransportadorPostaAtuhApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nombre': nombre,
        'contrasena': contrasena,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? rol(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rol''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? nombre(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombre''',
      ));
  int? estado(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

/// End TransportadorPostaAtuhApi Group Code

/// Start Transportador Api Group Code

class TransportadorApiGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://api.g4.potus.ar';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static DatosDelUsuarioCall datosDelUsuarioCall = DatosDelUsuarioCall();
}

class DatosDelUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = TransportadorApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DatosDelUsuario',
      apiUrl: '$baseUrl/mi_perfil',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Transportador Api Group Code

class TraccarProtocolApiCall {
  static Future<ApiCallResponse> call({
    int? deviceid,
    int? valid = 1,
    double? lat,
    double? lon,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TraccarProtocolApi',
      apiUrl: 'http://traccar.potus.ar:19080',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'deviceid': deviceid,
        'valid': valid,
        'lat': lat,
        'lon': lon,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
