import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputNombre widget.
  FocusNode? inputNombreFocusNode;
  TextEditingController? inputNombreTextController;
  String? Function(BuildContext, String?)? inputNombreTextControllerValidator;
  // State field(s) for inputContrasena widget.
  FocusNode? inputContrasenaFocusNode;
  TextEditingController? inputContrasenaTextController;
  late bool inputContrasenaVisibility;
  String? Function(BuildContext, String?)?
      inputContrasenaTextControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in ButtonAcceder widget.
  ApiCallResponse? apiLoginResult;

  @override
  void initState(BuildContext context) {
    inputContrasenaVisibility = false;
  }

  @override
  void dispose() {
    inputNombreFocusNode?.dispose();
    inputNombreTextController?.dispose();

    inputContrasenaFocusNode?.dispose();
    inputContrasenaTextController?.dispose();
  }
}
