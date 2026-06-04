import '/componentes/task_card2/task_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child22_model.dart';
export 'kanban_column_child22_model.dart';

class KanbanColumnChild22Widget extends StatefulWidget {
  const KanbanColumnChild22Widget({super.key});

  @override
  State<KanbanColumnChild22Widget> createState() =>
      _KanbanColumnChild22WidgetState();
}

class _KanbanColumnChild22WidgetState extends State<KanbanColumnChild22Widget> {
  late KanbanColumnChild22Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChild22Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.taskCardModel1,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'Bug Fixes',
            taskDesc: 'Resolving navigation overflow on small screens.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel2,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'Unit Testing',
            taskDesc: 'Writing tests for payment processing.',
          ),
        ),
      ],
    );
  }
}
