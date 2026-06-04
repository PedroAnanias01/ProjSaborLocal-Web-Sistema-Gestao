import '/componentes/task_card2/task_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child4_model.dart';
export 'kanban_column_child4_model.dart';

class KanbanColumnChild4Widget extends StatefulWidget {
  const KanbanColumnChild4Widget({super.key});

  @override
  State<KanbanColumnChild4Widget> createState() =>
      _KanbanColumnChild4WidgetState();
}

class _KanbanColumnChild4WidgetState extends State<KanbanColumnChild4Widget> {
  late KanbanColumnChild4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChild4Model());
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
            taskTitle: 'Design System',
            taskDesc:
                'Create a comprehensive design system for the mobile app.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel2,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'API Integration',
            taskDesc: 'Connect the frontend with auth services.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel3,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'User Feedback',
            taskDesc: 'Review the latest session recordings.',
          ),
        ),
      ],
    );
  }
}
