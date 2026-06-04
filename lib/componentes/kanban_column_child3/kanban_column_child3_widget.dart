import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child3_model.dart';
export 'kanban_column_child3_model.dart';

class KanbanColumnChild3Widget extends StatefulWidget {
  const KanbanColumnChild3Widget({super.key});

  @override
  State<KanbanColumnChild3Widget> createState() =>
      _KanbanColumnChild3WidgetState();
}

class _KanbanColumnChild3WidgetState extends State<KanbanColumnChild3Widget> {
  late KanbanColumnChild3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChild3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.taskCardModel,
      updateCallback: () => safeSetState(() {}),
      child: TaskCardWidget(
        title: 'Análise de Viabilidade',
        priorityBg: Color(0x00000000),
        priority: 'Baixa',
        priorityText: Color(0x00000000),
        description: 'Estudo técnico inicial concluído',
        date: '05 Out',
        assignee: 'JP',
      ),
    );
  }
}
