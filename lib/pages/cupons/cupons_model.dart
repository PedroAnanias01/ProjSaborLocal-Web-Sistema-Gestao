import '/componentes/barralateral/barralateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cupons_widget.dart' show CuponsWidget;
import 'package:flutter/material.dart';

class CuponsModel extends FlutterFlowModel<CuponsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
  }
}
