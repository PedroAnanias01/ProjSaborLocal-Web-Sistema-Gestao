import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kanban_column2_model.dart';
export 'kanban_column2_model.dart';

class KanbanColumn2Widget extends StatefulWidget {
  const KanbanColumn2Widget({
    super.key,
    Color? dotColor,
    String? title,
    String? count,
    this.child,
  })  : this.dotColor = dotColor ?? const Color(0x00000000),
        this.title = title ?? 'To Do',
        this.count = count ?? '3';

  final Color dotColor;
  final String title;
  final String count;
  final Widget Function()? child;

  @override
  State<KanbanColumn2Widget> createState() => _KanbanColumn2WidgetState();
}

class _KanbanColumn2WidgetState extends State<KanbanColumn2Widget> {
  late KanbanColumn2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanColumn2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF5C3D2E),
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.dotColor,
                            FlutterFlowTheme.of(context).warning,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'To Do',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  Spacer(),
                  Text(
                    '(${widget.count})',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.lato(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xB3FFFFFF),
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 10.0,
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Builder(builder: (_) {
                    return widget.child != null
                        ? widget.child!()
                        : SizedBox.shrink();
                  }),
                ].divide(SizedBox(height: 10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
