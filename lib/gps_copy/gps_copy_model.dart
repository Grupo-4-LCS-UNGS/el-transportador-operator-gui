import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'gps_copy_widget.dart' show GpsCopyWidget;
import 'package:flutter/material.dart';

class GpsCopyModel extends FlutterFlowModel<GpsCopyWidget> {
  ///  Local state fields for this page.

  List<LatLng> lugaresCliente = [];
  void addToLugaresCliente(LatLng item) => lugaresCliente.add(item);
  void removeFromLugaresCliente(LatLng item) => lugaresCliente.remove(item);
  void removeAtIndexFromLugaresCliente(int index) =>
      lugaresCliente.removeAt(index);
  void insertAtIndexInLugaresCliente(int index, LatLng item) =>
      lugaresCliente.insert(index, item);
  void updateLugaresClienteAtIndex(int index, Function(LatLng) updateFn) =>
      lugaresCliente[index] = updateFn(lugaresCliente[index]);

  int? iterador = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (informarAsignacion)] action in gpsCopy widget.
  ApiCallResponse? informarAsignacionApiResult;
  // Stores action output result for [Backend Call - API (MiCliente)] action in gpsCopy widget.
  ApiCallResponse? miClienteResult;
  // Stores action output result for [Backend Call - API (ObtenerPosicionesDeMiCliente)] action in gpsCopy widget.
  ApiCallResponse? lugaresResult;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TraccarProtocolApi)] action in gpsCopy widget.
  ApiCallResponse? apiTraccarProtocolResult;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (informarFinAsignacion)] action in IconButton widget.
  ApiCallResponse? apiFinalAsignacionResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
