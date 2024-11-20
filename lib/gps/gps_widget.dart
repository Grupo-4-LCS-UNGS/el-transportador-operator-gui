import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gps_model.dart';
export 'gps_model.dart';

class GpsWidget extends StatefulWidget {
  const GpsWidget({super.key});

  @override
  State<GpsWidget> createState() => _GpsWidgetState();
}

class _GpsWidgetState extends State<GpsWidget> {
  late GpsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GpsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 5000),
        callback: (timer) async {
          currentUserLocationValue =
              await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
          FFAppState().ultimaPosicionInformadaAppState =
              currentUserLocationValue;
          unawaited(
            () async {
              await _model.googleMapsController.future.then(
                (c) => c.animateCamera(
                  CameraUpdate.newLatLng(FFAppState()
                      .ultimaPosicionInformadaAppState!
                      .toGoogleMaps()),
                ),
              );
            }(),
          );
          _model.apiResult8sb = await TraccarProtocolApiCall.call(
            deviceid: FFAppState().vehiculoActualmenteConduciendoAppState,
            lat: functions
                .latAsDouble(FFAppState().ultimaPosicionInformadaAppState),
            lon: functions
                .longAsDouble(FFAppState().ultimaPosicionInformadaAppState),
            valid: 1,
          );

          if (!(_model.apiResult8sb?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'No se está pudiendo informar posición GPS',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
          }
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              _model.pu =
                  await TransportadorApiGroup.vehiculoCambiarEstadoxIDCall.call(
                id: FFAppState().vehiculoActualmenteConduciendoAppState,
                estado: 'Disponible',
              );

              FFAppState().estaManejandoAppState = false;
              FFAppState().deleteVehiculoActualmenteConduciendoAppState();
              FFAppState().vehiculoActualmenteConduciendoAppState = 0;

              FFAppState().update(() {});
              _model.instantTimer?.cancel();

              context.pushNamed('HomePage');

              safeSetState(() {});
            },
          ),
          title: Text(
            'Conduciendo',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Builder(builder: (context) {
                  final googleMapMarker =
                      FFAppState().ultimaPosicionInformadaAppState;
                  return FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) =>
                        safeSetState(() => _model.googleMapsCenter = latLng),
                    initialLocation: _model.googleMapsCenter ??=
                        const LatLng(13.106061, -59.613158),
                    markers: [
                      if (googleMapMarker != null)
                        FlutterFlowMarker(
                          googleMapMarker.serialize(),
                          googleMapMarker,
                        ),
                    ],
                    markerColor: GoogleMarkerColor.red,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 14.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: true,
                    showMapToolbar: true,
                    showTraffic: true,
                    centerMapOnMarkerTap: true,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
