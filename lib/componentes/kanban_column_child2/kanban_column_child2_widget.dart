import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child2_model.dart';
export 'kanban_column_child2_model.dart';

class KanbanColumnChild2Widget extends StatefulWidget {
  const KanbanColumnChild2Widget({super.key});

  @override
  State<KanbanColumnChild2Widget> createState() =>
      _KanbanColumnChild2WidgetState();
}

class _KanbanColumnChild2WidgetState extends State<KanbanColumnChild2Widget> {
  late KanbanColumnChild2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChild2Model());
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
          child: TaskCardWidget(
            title: 'Setup do Projeto Flutter',
            priorityBg: Color(0x00000000),
            priority: 'Alta',
            priorityText: Color(0x00000000),
            description: 'Configuração de ambiente e CI/CD',
            date: '10 Out',
            assignee: 'DG',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel2,
          updateCallback: () => safeSetState(() {}),
          child: TaskCardWidget(
            title: 'Integração API',
            priorityBg: Color(0x00000000),
            priority: 'Alta',
            priorityText: Color(0x00000000),
            description: 'Endpoints de autenticação e perfil',
            date: '11 Out',
            assignee: 'AR',
          ),
        ),
      ],
    );
  }
}
