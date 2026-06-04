import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PuxarPedidosPagosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'puxarPedidosPagos',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pedidos_pagos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idPedido(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? clienteID(dynamic response) => (getJsonField(
        response,
        r'''$[:].cliente_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_pedido_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? total(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PuxarItensPedidoIDCall {
  static Future<ApiCallResponse> call({
    int? pedidoId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'puxarItensPedidoID',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/busca_Itens_IdPedido',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pedido_id': pedidoId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? imagem(dynamic response) => (getJsonField(
        response,
        r'''$[:]._item._produto.imagens_produtos.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:]._item._produto.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantidade(dynamic response) => (getJsonField(
        response,
        r'''$[:]._item.qtd''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:]._item._produto.descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? preco(dynamic response) => (getJsonField(
        response,
        r'''$[:].subtotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PuxarPedidosProducaoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'puxarPedidosProducao',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pedidos_producao',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static int? data(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total''',
      ));
  static int? idcliente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cliente_id''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status_pedido_id''',
      ));
}

class PuxarPedidosFinalizadosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'puxarPedidosFinalizados',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pedidos_Entega',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static int? data(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total''',
      ));
  static int? idCliente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cliente_id''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status_pedido_id''',
      ));
}

class AlterarStatusCall {
  static Future<ApiCallResponse> call({
    int? pedidoId,
    int? novoStatusId,
  }) async {
    final ffApiRequestBody = '''
{
  "pedido_id": ${pedidoId},
  "novo_status_id": ${novoStatusId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'alterarStatus',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/alterar_status_pedido',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarCardapioCall {
  static Future<ApiCallResponse> call({
    String? buscarTerm = '',
    String? categoria = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarCardapio',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/buscar_cardapio',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Pesquisar': buscarTerm,
        'categoria': categoria,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginGerenciamentoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginGerenciamento',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/auth/login_gerenciamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken.name''',
      ));
  static int? funcao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.authToken.papel_id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken.token''',
      ));
}

class CadastrarGerenciamentoCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    int? papelId,
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "password": "${escapeStringForJson(password)}",
  "papel_id": ${papelId},
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrarGerenciamento',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/auth/signup_Gerenciamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HistoricoPedidosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'historicoPedidos',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/puxar_Pedidos_Geral',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].__cliente.nome''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._status_pedido.status''',
      ));
}

class EditarProdutoCall {
  static Future<ApiCallResponse> call({
    int? produtoId,
    String? nome = '',
    String? descricao = '',
    double? preco,
    String? categoria = '',
  }) async {
    final ffApiRequestBody = '''
{
  "produto_id": ${produtoId},
  "nome": "${escapeStringForJson(nome)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "preco": ${preco},
  "categoria": "${escapeStringForJson(categoria)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Editar Produto',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/editar_produto',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExcluirProdutoCall {
  static Future<ApiCallResponse> call({
    int? produtoId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Excluir Produto',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/Excluir_Produto',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'produto_id': produtoId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarProdutoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? descricao = '',
    double? preco,
    String? categoria = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "preco": ${preco},
  "categoria": "${escapeStringForJson(categoria)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrarProduto',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/produto',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadImagensCall {
  static Future<ApiCallResponse> call({
    String? imagemArquivo = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadImagens',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/upload/image',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'content': imagemArquivo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarFuncionariosCall {
  static Future<ApiCallResponse> call({
    String? pesquisar = '',
    int? papelId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarFuncionarios',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/buscarFuncionarios',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Pesquisar': pesquisar,
        'papel_id': papelId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? funcao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].papel_id''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class AlterarCargoCall {
  static Future<ApiCallResponse> call({
    int? userId,
    int? papelId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "papel_id": ${papelId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'alterarCargo',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/alterarCargo',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DesativarFuncionariosCall {
  static Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'desativarFuncionarios',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/desativarFuncionarios',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaPratosdoDiaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaPratosdoDia',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/pratos_do_dia_gerenciamento',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:]._produto.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? da(dynamic response) => (getJsonField(
        response,
        r'''$[:].dia_semana''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? preco(dynamic response) => (getJsonField(
        response,
        r'''$[:].preco_promocional''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? idP(dynamic response) => (getJsonField(
        response,
        r'''$[:].produto_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ProdutosEditarPratosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'produtosEditarPratos',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/produtos_gerenciamento',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EditarPratosdoDiaCall {
  static Future<ApiCallResponse> call({
    int? pratosDoDiaId,
    int? produtoId,
    double? preco,
  }) async {
    final ffApiRequestBody = '''
{
 "pratos_do_dia_id":${pratosDoDiaId},
 "produto_id":${produtoId},
 "preco":${preco}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editarPratosdoDia',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/alterar_prato',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NumeroCanceladosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'numeroCancelados',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/dashboard-metrics_cancel',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? cancelados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pedido2.total_cancelados''',
      ));
}

class NumeroPedidosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'numeroPedidos',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/dashboard-metrics',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? pedido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pedido1.PEDIDO_id1''',
      ));
}

class ValoresPedidosRealizadosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'valoresPedidosRealizados',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/dashboard-metrics_value',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? total(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.pedido1.PEDIDO_total1''',
      ));
}

class GetCouponsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCoupons',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/coupons',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? expiracaodata(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].expiration_date''',
      ));
  static int? minimo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].min_order_value''',
      ));
  static int? maximo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].max_discount''',
      ));
  static int? valorDesconto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].discount_value''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].code''',
      ));
}

class CriarCupomCall {
  static Future<ApiCallResponse> call({
    String? code = '',
    int? discountValue,
    int? minOrderValue,
    int? maxDiscount,
  }) async {
    final ffApiRequestBody = '''
{
  "code": "${escapeStringForJson(code)}",
  "discount_value": ${discountValue},
  "min_order_value": ${minOrderValue},
  "max_discount": ${maxDiscount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarCupom',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:DtQZliOu/coupons',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
