import 'package:flutter/material.dart';
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
