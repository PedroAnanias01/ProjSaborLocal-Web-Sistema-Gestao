import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_produto_widget.dart' show EditarProdutoWidget;
import 'package:flutter/material.dart';

class EditarProdutoModel extends FlutterFlowModel<EditarProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // State field(s) for TextFieldNMprod widget.
  FocusNode? textFieldNMprodFocusNode;
  TextEditingController? textFieldNMprodTextController;
  String? Function(BuildContext, String?)?
      textFieldNMprodTextControllerValidator;
  // State field(s) for TextFieldPRCprod widget.
  FocusNode? textFieldPRCprodFocusNode;
  TextEditingController? textFieldPRCprodTextController;
  String? Function(BuildContext, String?)?
      textFieldPRCprodTextControllerValidator;
  // State field(s) for DropDownCATprod widget.
  String? dropDownCATprodValue;
  FormFieldController<String>? dropDownCATprodValueController;
  // State field(s) for TextFieldDESCprod widget.
  FocusNode? textFieldDESCprodFocusNode;
  TextEditingController? textFieldDESCprodTextController;
  String? Function(BuildContext, String?)?
      textFieldDESCprodTextControllerValidator;
  // Stores action output result for [Backend Call - API (Editar Produto)] action in Button widget.
  ApiCallResponse? apiResultEDTprod;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
    textFieldNMprodFocusNode?.dispose();
    textFieldNMprodTextController?.dispose();

    textFieldPRCprodFocusNode?.dispose();
    textFieldPRCprodTextController?.dispose();

    textFieldDESCprodFocusNode?.dispose();
    textFieldDESCprodTextController?.dispose();
  }
}
