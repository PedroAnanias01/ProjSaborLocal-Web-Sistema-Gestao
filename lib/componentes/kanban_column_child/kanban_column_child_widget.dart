import '/componentes/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kanban_column_child_model.dart';
export 'kanban_column_child_model.dart';

class KanbanColumnChildWidget extends StatefulWidget {
  const KanbanColumnChildWidget({super.key});

  @override
  State<KanbanColumnChildWidget> createState() =>
      _KanbanColumnChildWidgetState();
}

class _KanbanColumnChildWidgetState extends State<KanbanColumnChildWidget> {
  late KanbanColumnChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumnChildModel());
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
            title: 'Design de Interface',
            priorityBg: Color(0x00000000),
            priority: 'Alta',
            priorityText: Color(0x00000000),
            description: 'Criar protótipo de alta fidelidade no Figma',
            date: '12 Out',
            assignee: 'AR',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel2,
          updateCallback: () => safeSetState(() {}),
          child: TaskCardWidget(
            title: 'Definição de Requisitos',
            priorityBg: Color(0x00000000),
            priority: 'Média',
            priorityText: Color(0x00000000),
            description: 'Documentar fluxos de usuário principais',
            date: '14 Out',
            assignee: 'JP',
          ),
        ),
        wrapWithModel(
          model: _model.taskCardModel3,
          updateCallback: () => safeSetState(() {}),
          child: TaskCardWidget(
            title: 'Pesquisa de Usuário',
            priorityBg: Color(0x00000000),
            priority: 'Baixa',
            priorityText: Color(0x00000000),
            description: 'Entrevistas com stakeholders',
            date: '15 Out',
            assignee: 'ML',
          ),
        ),
      ],
    );
  }
}
