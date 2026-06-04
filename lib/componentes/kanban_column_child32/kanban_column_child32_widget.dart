import '/componentes/task_card2/task_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child32_model.dart';
export 'kanban_column_child32_model.dart';

class KanbanColumnChild32Widget extends StatefulWidget {
  const KanbanColumnChild32Widget({super.key});

  @override
  State<KanbanColumnChild32Widget> createState() =>
      _KanbanColumnChild32WidgetState();
}

class _KanbanColumnChild32WidgetState extends State<KanbanColumnChild32Widget> {
  late KanbanColumnChild32Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChild32Model());
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
            taskTitle: 'Initial Setup',
            taskDesc: 'Project boilerplate and environment variables.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel2,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'Logo Design',
            taskDesc: 'Finalize brand logo and export assets.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel3,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'CI/CD Pipeline',
            taskDesc: 'Automated deployment setup for staging.',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel4,
          updateCallback: () => safeSetState(() {}),
          child: TaskCard2Widget(
            taskTitle: 'Onboarding Flow',
            taskDesc: 'The 3-step welcome carousel is now live.',
          ),
        ),
      ],
    );
  }
}
