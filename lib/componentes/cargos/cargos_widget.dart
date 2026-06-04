import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cargos_model.dart';
export 'cargos_model.dart';

class CargosWidget extends StatefulWidget {
  const CargosWidget({
    super.key,
    this.cargo,
    required this.user,
  });

  final int? cargo;
  final int? user;

  @override
  State<CargosWidget> createState() => _CargosWidgetState();
}

class _CargosWidgetState extends State<CargosWidget> {
  late CargosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CargosModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: FlutterFlowDropDown<int>(
        controller: _model.dropDownValueController ??= FormFieldController<int>(
          _model.dropDownValue ??= widget.cargo,
        ),
        options: List<int>.from([2, 3, 4]),
        optionLabels: ['Cozinheiro', 'Atendente', 'Auxiliar de cozinha'],
        onChanged: (val) async {
          safeSetState(() => _model.dropDownValue = val);
          _model.resultCargo = await AlterarCargoCall.call(
            userId: widget.user,
            papelId: _model.dropDownValue,
          );

          safeSetState(() {});
        },
        width: 200.0,
        height: 40.0,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.lato(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
        hintText: 'Cargo',
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: Colors.transparent,
        borderWidth: 0.0,
        borderRadius: 8.0,
        margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        hidesUnderline: true,
        isOverButton: false,
        isSearchable: false,
        isMultiSelect: false,
      ),
    );
  }
}
