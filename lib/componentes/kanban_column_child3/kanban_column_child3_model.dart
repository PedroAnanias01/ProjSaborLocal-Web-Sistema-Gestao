import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_column_child3_widget.dart' show KanbanColumnChild3Widget;
import 'package:flutter/material.dart';

class KanbanColumnChild3Model
    extends FlutterFlowModel<KanbanColumnChild3Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TaskCard.
  late TaskCardModel taskCardModel;

  @override
  void initState(BuildContext context) {
    taskCardModel = createModel(context, () => TaskCardModel());
  }

  @override
  void dispose() {
    taskCardModel.dispose();
  }
}
