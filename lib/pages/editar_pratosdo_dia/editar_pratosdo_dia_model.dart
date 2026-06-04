import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_pratosdo_dia_widget.dart' show EditarPratosdoDiaWidget;
import 'package:flutter/material.dart';

class EditarPratosdoDiaModel extends FlutterFlowModel<EditarPratosdoDiaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (editarPratosdoDia)] action in Button widget.
  ApiCallResponse? apiResultepg;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
