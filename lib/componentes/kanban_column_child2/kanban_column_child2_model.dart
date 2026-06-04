import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_column_child2_widget.dart' show KanbanColumnChild2Widget;
import 'package:flutter/material.dart';

class KanbanColumnChild2Model
    extends FlutterFlowModel<KanbanColumnChild2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TaskCard.
  late TaskCardModel taskCardModel1;
  // Model for TaskCard.
  late TaskCardModel taskCardModel2;

  @override
  void initState(BuildContext context) {
    taskCardModel1 = createModel(context, () => TaskCardModel());
    taskCardModel2 = createModel(context, () => TaskCardModel());
  }

  @override
  void dispose() {
    taskCardModel1.dispose();
    taskCardModel2.dispose();
  }
}
