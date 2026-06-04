import '/componentes/aproveitamento/aproveitamento_widget.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/dashboardvandas/dashboardvandas_widget.dart';
import '/componentes/total_pedidos/total_pedidos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboardd_model.dart';
export 'dashboardd_model.dart';

class DashboarddWidget extends StatefulWidget {
  const DashboarddWidget({super.key});

  static String routeName = 'dashboardd';
  static String routePath = '/dashboardd';

  @override
  State<DashboarddWidget> createState() => _DashboarddWidgetState();
}

class _DashboarddWidgetState extends State<DashboarddWidget> {
  late DashboarddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboarddModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: 1440.0,
            height: 913.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFC08552), Color(0xFF4B2E2B)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Container(
                        height: 898.8,
                        child: wrapWithModel(
                          model: _model.barralateralModel,
                          updateCallback: () => safeSetState(() {}),
                          child: BarralateralWidget(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.04, -0.8),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 150.0, 430.0, 0.0),
                        child: Container(
                          width: 391.41,
                          height: 137.6,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: wrapWithModel(
                            model: _model.dashboardvandasModel,
                            updateCallback: () => safeSetState(() {}),
                            child: DashboardvandasWidget(),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 50.0, 270.0, 0.0),
                        child: Text(
                          'Estatísticas Gerais (Hoje)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFF9F1E4),
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.12, -0.58),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            200.0, 150.0, 0.0, 0.0),
                        child: Container(
                          width: 391.4,
                          height: 150.05,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: wrapWithModel(
                            model: _model.totalPedidosModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TotalPedidosWidget(),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 160.0, 0.0, 0.0),
                        child: Container(
                          width: 391.4,
                          height: 127.75,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: wrapWithModel(
                            model: _model.aproveitamentoModel,
                            updateCallback: () => safeSetState(() {}),
                            child: AproveitamentoWidget(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
