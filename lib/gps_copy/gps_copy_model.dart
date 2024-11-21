import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'gps_copy_widget.dart' show GpsCopyWidget;
import 'package:flutter/material.dart';

class GpsCopyModel extends FlutterFlowModel<GpsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (informarAsignacion)] action in gpsCopy widget.
  ApiCallResponse? apiAsignacionInformadaResult;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TraccarProtocolApi)] action in gpsCopy widget.
  ApiCallResponse? apiResult8sb;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (VehiculoCambiarEstadoxID)] action in IconButton widget.
  ApiCallResponse? pu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
