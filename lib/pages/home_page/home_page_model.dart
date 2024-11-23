import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  var scannedIdVehicule = '';
  // State field(s) for TextFieldIdVehiculo widget.
  FocusNode? textFieldIdVehiculoFocusNode;
  TextEditingController? textFieldIdVehiculoTextController;
  String? Function(BuildContext, String?)?
      textFieldIdVehiculoTextControllerValidator;
  // Stores action output result for [Backend Call - API (VehiculoxID)] action in ButtonConducir widget.
  ApiCallResponse? apiVehiculoEscaneadoResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldIdVehiculoFocusNode?.dispose();
    textFieldIdVehiculoTextController?.dispose();
  }

  /// Action blocks.
  Future test(BuildContext context) async {}
}
