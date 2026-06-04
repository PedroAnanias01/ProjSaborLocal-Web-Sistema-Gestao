import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'membros_widget.dart' show MembrosWidget;
import 'package:flutter/material.dart';

class MembrosModel extends FlutterFlowModel<MembrosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // State field(s) for TextFieldPesquisarMembros widget.
  FocusNode? textFieldPesquisarMembrosFocusNode;
  TextEditingController? textFieldPesquisarMembrosTextController;
  String? Function(BuildContext, String?)?
      textFieldPesquisarMembrosTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (desativarFuncionarios)] action in IconButton widget.
  ApiCallResponse? apiResultes3;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
    textFieldPesquisarMembrosFocusNode?.dispose();
    textFieldPesquisarMembrosTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
