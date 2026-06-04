import '/componentes/aproveitamento/aproveitamento_widget.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/dashboardvandas/dashboardvandas_widget.dart';
import '/componentes/total_pedidos/total_pedidos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboardd_widget.dart' show DashboarddWidget;
import 'package:flutter/material.dart';

class DashboarddModel extends FlutterFlowModel<DashboarddWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barralateral component.
  late BarralateralModel barralateralModel;
  // Model for dashboardvandas component.
  late DashboardvandasModel dashboardvandasModel;
  // Model for TotalPedidos component.
  late TotalPedidosModel totalPedidosModel;
  // Model for aproveitamento component.
  late AproveitamentoModel aproveitamentoModel;

  @override
  void initState(BuildContext context) {
    barralateralModel = createModel(context, () => BarralateralModel());
    dashboardvandasModel = createModel(context, () => DashboardvandasModel());
    totalPedidosModel = createModel(context, () => TotalPedidosModel());
    aproveitamentoModel = createModel(context, () => AproveitamentoModel());
  }

  @override
  void dispose() {
    barralateralModel.dispose();
    dashboardvandasModel.dispose();
    totalPedidosModel.dispose();
    aproveitamentoModel.dispose();
  }
}
