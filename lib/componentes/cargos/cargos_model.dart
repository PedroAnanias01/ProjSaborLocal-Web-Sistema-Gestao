import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cargos_widget.dart' show CargosWidget;
import 'package:flutter/material.dart';

class CargosModel extends FlutterFlowModel<CargosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - API (alterarCargo)] action in DropDown widget.
  ApiCallResponse? resultCargo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
