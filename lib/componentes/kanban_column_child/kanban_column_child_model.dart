import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_column_child_widget.dart' show KanbanColumnChildWidget;
import 'package:flutter/material.dart';

class KanbanColumnChildModel extends FlutterFlowModel<KanbanColumnChildWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TaskCard.
  late TaskCardModel taskCardModel1;
  // Model for TaskCard.
  late TaskCardModel taskCardModel2;
  // Model for TaskCard.
  late TaskCardModel taskCardModel3;

  @override
  void initState(BuildContext context) {
    taskCardModel1 = createModel(context, () => TaskCardModel());
    taskCardModel2 = createModel(context, () => TaskCardModel());
    taskCardModel3 = createModel(context, () => TaskCardModel());
  }

  @override
  void dispose() {
    taskCardModel1.dispose();
    taskCardModel2.dispose();
    taskCardModel3.dispose();
  }
}
