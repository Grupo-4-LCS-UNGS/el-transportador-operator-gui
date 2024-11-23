import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gps_copy_model.dart';
export 'gps_copy_model.dart';

class GpsCopyWidget extends StatefulWidget {
  const GpsCopyWidget({super.key});

  @override
  State<GpsCopyWidget> createState() => _GpsCopyWidgetState();
}

class _GpsCopyWidgetState extends State<GpsCopyWidget> {
  late GpsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GpsCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      _model.informarAsignacionApiResult =
          await TransportadorApiGroup.informarAsignacionCall.call(
        idVehiculo: FFAppState().vehiculoActualmenteConduciendoAppState,
        idUsuario: currentUserData?.id,
      );

      if ((_model.informarAsignacionApiResult?.succeeded ?? true)) {
        FFAppState().asignacionID =
            TransportadorApiGroup.informarAsignacionCall.idAsignacion(
          (_model.informarAsignacionApiResult?.jsonBody ?? ''),
        )!;
      }
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 5000),
        callback: (timer) async {
          currentUserLocationValue =
              await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
          FFAppState().ultimaPosicionInformadaAppState =
              currentUserLocationValue;
          safeSetState(() {});
          _model.apiTraccarProtocolResult = await TraccarProtocolApiCall.call(
            deviceid: FFAppState().vehiculoActualmenteConduciendoAppState,
            valid: 1,
            lat: functions
                .latAsDouble(FFAppState().ultimaPosicionInformadaAppState),
            lon: functions
                .longAsDouble(FFAppState().ultimaPosicionInformadaAppState),
          );

          if (!(_model.apiTraccarProtocolResult?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'No estamos pudiendo informar tu posición',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).error,
                  ),
                ),
                duration: const Duration(milliseconds: 2000),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
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
      child: WillPopScope(
        onWillPop: () async => false,
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
                _model.apiFinalAsignacionResult =
                    await TransportadorApiGroup.informarFinAsignacionCall.call(
                  idAsignacion: FFAppState().asignacionID,
                );

                if ((_model.apiFinalAsignacionResult?.succeeded ?? true)) {
                  if ((_model.apiFinalAsignacionResult?.succeeded ?? true)) {
                    FFAppState().estaManejandoAppState = false;
                    FFAppState().deleteVehiculoActualmenteConduciendoAppState();
                    FFAppState().vehiculoActualmenteConduciendoAppState = 0;

                    FFAppState().deleteAsignacionID();
                    FFAppState().asignacionID = 0;
                  }
                }

                context.goNamed(
                  'HomePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 850),
                    ),
                  },
                );

                safeSetState(() {});
              },
            ),
            title: Text(
              'Conduciendo',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
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
                  child: FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                    initialLocation: _model.googleMapsCenter ??=
                        const LatLng(-34.521902527624974, -58.70000868445082),
                    markerColor: GoogleMarkerColor.violet,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.night,
                    initialZoom: 14.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: true,
                    showMapToolbar: true,
                    showTraffic: true,
                    centerMapOnMarkerTap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
