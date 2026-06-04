import '/componentes/task_card2/task_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_column_child4_widget.dart' show KanbanColumnChild4Widget;
import 'package:flutter/material.dart';

class KanbanColumnChild4Model
    extends FlutterFlowModel<KanbanColumnChild4Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TaskCard.
  late TaskCard2Model taskCardModel1;
  // Model for TaskCard.
  late TaskCard2Model taskCardModel2;
  // Model for TaskCard.
  late TaskCard2Model taskCardModel3;

  @override
  void initState(BuildContext context) {
    taskCardModel1 = createModel(context, () => TaskCard2Model());
    taskCardModel2 = createModel(context, () => TaskCard2Model());
    taskCardModel3 = createModel(context, () => TaskCard2Model());
  }

  @override
  void dispose() {
    taskCardModel1.dispose();
    taskCardModel2.dispose();
    taskCardModel3.dispose();
  }
}
