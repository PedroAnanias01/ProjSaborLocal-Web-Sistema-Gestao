import '/backend/api_requests/api_calls.dart';
import '/componentes/barralateral/barralateral_widget.dart';
import '/componentes/cardproduto/cardproduto_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'produtos_model.dart';
export 'produtos_model.dart';

class ProdutosWidget extends StatefulWidget {
  const ProdutosWidget({super.key});

  static String routeName = 'produtos';
  static String routePath = '/produtos';

  @override
  State<ProdutosWidget> createState() => _ProdutosWidgetState();
}

class _ProdutosWidgetState extends State<ProdutosWidget> {
  late ProdutosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: 1440.0,
            height: 913.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFC08552), Color(0xFF4B2E2B)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(280.0, 0.0),
                  child: wrapWithModel(
                    model: _model.barralateralModel,
                    updateCallback: () => safeSetState(() {}),
                    child: BarralateralWidget(),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 120.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: BuscarCardapioCall.call(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final gridViewBuscarCardapioResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final produtos = getJsonField(
                                    gridViewBuscarCardapioResponse.jsonBody,
                                    r'''$''',
                                  ).toList();

                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount: produtos.length,
                                    itemBuilder: (context, produtosIndex) {
                                      final produtosItem =
                                          produtos[produtosIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            EditarProdutoWidget.routeName,
                                            queryParameters: {
                                              'produtoSelecionado':
                                                  serializeParam(
                                                getJsonField(
                                                  produtosItem,
                                                  r'''$''',
                                                ),
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: CardprodutoWidget(
                                          key: Key(
                                              'Keybf1_${produtosIndex}_of_${produtos.length}'),
                                          nomeProduto: getJsonField(
                                            produtosItem,
                                            r'''$.nome''',
                                          ).toString(),
                                          imagemProduto: getJsonField(
                                            produtosItem,
                                            r'''$.imagens_produtos.url''',
                                          ).toString(),
                                          disponivel: getJsonField(
                                            produtosItem,
                                            r'''$.disponibilidade''',
                                          ),
                                          produto: produtosItem,
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.95, 0.95),
                          child: Container(
                            width: 56.0,
                            height: 56.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9F1E4),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xFFF9F1E4),
                              icon: Icon(
                                Icons.add,
                                color: Color(0xFF4B2E2B),
                                size: 40.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(CriarprodutoWidget.routeName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
