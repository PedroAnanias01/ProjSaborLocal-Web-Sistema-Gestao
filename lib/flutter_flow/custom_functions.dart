import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? traduzirMesData(String? dataEmIngles) {
  // Se o texto vier nulo ou vazio, retorna um texto padrão seguro
  if (dataEmIngles == null || dataEmIngles.isEmpty) {
    return 'Sem data';
  }

// Dicionário de tradução dos meses
  final mapaMeses = {
    'January': 'Janeiro',
    'February': 'Fevereiro',
    'March': 'Março',
    'April': 'Abril',
    'May': 'Maio',
    'June': 'Junho',
    'July': 'Julho',
    'August': 'Agosto',
    'September': 'Setembro',
    'October': 'Outubro',
    'November': 'Novembro',
    'December': 'Dezembro'
  };

  String dataTraduzida = dataEmIngles;

// Substitui o mês em inglês pelo correspondente em português
  mapaMeses.forEach((ingles, portugues) {
    if (dataTraduzida.contains(ingles)) {
      dataTraduzida = dataTraduzida.replaceAll(ingles, portugues);
    }
  });

  return dataTraduzida;
}

String gerarMoeda(double? valor) {
  if (valor == null) {
    return 'R\$ 0,00';
  }
  return 'R\$ ${valor.toStringAsFixed(2).replaceAll('.', ',')}';
}

String? converterNumeroUnicoParaDia(int? numeroDia) {
  if (numeroDia == null) {
    return '';
  }

  const mapaDias = {
    1: 'Segunda-feira',
    2: 'Terça-feira',
    3: 'Quarta-feira',
    4: 'Quinta-feira',
    5: 'Sexta-feira',
    6: 'Sábado',
    7: 'Domingo',
  };

  return mapaDias[numeroDia] ?? 'Inválido';
}
