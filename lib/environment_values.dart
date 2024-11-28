import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _hostApi = data['hostApi'];
      _traccarapi = data['traccarapi'];
      _traccarAuth = data['traccarAuth'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _hostApi = '';
  String get hostApi => _hostApi;

  String _traccarapi = '';
  String get traccarapi => _traccarapi;

  String _traccarAuth = '';
  String get traccarAuth => _traccarAuth;
}
