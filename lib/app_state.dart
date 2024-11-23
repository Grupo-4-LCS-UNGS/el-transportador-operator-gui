import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _estaManejandoAppState =
          await secureStorage.getBool('ff_estaManejandoAppState') ??
              _estaManejandoAppState;
    });
    await _safeInitAsync(() async {
      _vehiculoActualmenteConduciendoAppState = await secureStorage
              .getInt('ff_vehiculoActualmenteConduciendoAppState') ??
          _vehiculoActualmenteConduciendoAppState;
    });
    await _safeInitAsync(() async {
      _estaLogeado =
          await secureStorage.getBool('ff_estaLogeado') ?? _estaLogeado;
    });
    await _safeInitAsync(() async {
      _ultimaActividadApp =
          await secureStorage.read(key: 'ff_ultimaActividadApp') != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  (await secureStorage.getInt('ff_ultimaActividadApp'))!)
              : _ultimaActividadApp;
    });
    await _safeInitAsync(() async {
      _asignacionID =
          await secureStorage.getInt('ff_asignacionID') ?? _asignacionID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _estaManejandoAppState = false;
  bool get estaManejandoAppState => _estaManejandoAppState;
  set estaManejandoAppState(bool value) {
    _estaManejandoAppState = value;
    secureStorage.setBool('ff_estaManejandoAppState', value);
  }

  void deleteEstaManejandoAppState() {
    secureStorage.delete(key: 'ff_estaManejandoAppState');
  }

  LatLng? _ultimaPosicionInformadaAppState = const LatLng(0.0, 0.0);
  LatLng? get ultimaPosicionInformadaAppState =>
      _ultimaPosicionInformadaAppState;
  set ultimaPosicionInformadaAppState(LatLng? value) {
    _ultimaPosicionInformadaAppState = value;
  }

  int _vehiculoActualmenteConduciendoAppState = 0;
  int get vehiculoActualmenteConduciendoAppState =>
      _vehiculoActualmenteConduciendoAppState;
  set vehiculoActualmenteConduciendoAppState(int value) {
    _vehiculoActualmenteConduciendoAppState = value;
    secureStorage.setInt('ff_vehiculoActualmenteConduciendoAppState', value);
  }

  void deleteVehiculoActualmenteConduciendoAppState() {
    secureStorage.delete(key: 'ff_vehiculoActualmenteConduciendoAppState');
  }

  bool _estaLogeado = false;
  bool get estaLogeado => _estaLogeado;
  set estaLogeado(bool value) {
    _estaLogeado = value;
    secureStorage.setBool('ff_estaLogeado', value);
  }

  void deleteEstaLogeado() {
    secureStorage.delete(key: 'ff_estaLogeado');
  }

  DateTime? _ultimaActividadApp =
      DateTime.fromMillisecondsSinceEpoch(1731202320000);
  DateTime? get ultimaActividadApp => _ultimaActividadApp;
  set ultimaActividadApp(DateTime? value) {
    _ultimaActividadApp = value;
    value != null
        ? secureStorage.setInt(
            'ff_ultimaActividadApp', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_ultimaActividadApp');
  }

  void deleteUltimaActividadApp() {
    secureStorage.delete(key: 'ff_ultimaActividadApp');
  }

  int _asignacionID = 0;
  int get asignacionID => _asignacionID;
  set asignacionID(int value) {
    _asignacionID = value;
    secureStorage.setInt('ff_asignacionID', value);
  }

  void deleteAsignacionID() {
    secureStorage.delete(key: 'ff_asignacionID');
  }

  List<PlaceRowStruct> _ultimoPlaceInformado = [
    PlaceRowStruct.fromSerializableMap(jsonDecode(
        '{\"latitude\":\"-58.74902835608765\",\"longitude\":\"-34.457410959777576\",\"title\":\"Sucursal 1\",\"description\":\"Calle Falsa 123\",\"image_url\":\"\"}')),
    PlaceRowStruct.fromSerializableMap(jsonDecode(
        '{\"latitude\":\"-58.72834692039146\",\"longitude\":\"-34.56088169104979\",\"title\":\"Sucursal 2\",\"description\":\"Av siempre viva 123\",\"image_url\":\"\"}')),
    PlaceRowStruct.fromSerializableMap(jsonDecode(
        '{\"latitude\":\"-58.546645735342395\",\"longitude\":\"-34.56696420288483\",\"title\":\"Lugar 3\",\"description\":\"Hello World\",\"image_url\":\"Hello World\"}'))
  ];
  List<PlaceRowStruct> get ultimoPlaceInformado => _ultimoPlaceInformado;
  set ultimoPlaceInformado(List<PlaceRowStruct> value) {
    _ultimoPlaceInformado = value;
  }

  void addToUltimoPlaceInformado(PlaceRowStruct value) {
    ultimoPlaceInformado.add(value);
  }

  void removeFromUltimoPlaceInformado(PlaceRowStruct value) {
    ultimoPlaceInformado.remove(value);
  }

  void removeAtIndexFromUltimoPlaceInformado(int index) {
    ultimoPlaceInformado.removeAt(index);
  }

  void updateUltimoPlaceInformadoAtIndex(
    int index,
    PlaceRowStruct Function(PlaceRowStruct) updateFn,
  ) {
    ultimoPlaceInformado[index] = updateFn(_ultimoPlaceInformado[index]);
  }

  void insertAtIndexInUltimoPlaceInformado(int index, PlaceRowStruct value) {
    ultimoPlaceInformado.insert(index, value);
  }

  double _distanciaInicial = 0.0;
  double get distanciaInicial => _distanciaInicial;
  set distanciaInicial(double value) {
    _distanciaInicial = value;
  }

  int _ultimaPosicionId = 0;
  int get ultimaPosicionId => _ultimaPosicionId;
  set ultimaPosicionId(int value) {
    _ultimaPosicionId = value;
  }

  double _distanciaFinal = 0.0;
  double get distanciaFinal => _distanciaFinal;
  set distanciaFinal(double value) {
    _distanciaFinal = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
