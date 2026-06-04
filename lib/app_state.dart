import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _LoginEfetuado = prefs.getBool('ff_LoginEfetuado') ?? _LoginEfetuado;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Função de cada funcionário dentro do restaurante
  int _papelID = 1;
  int get papelID => _papelID;
  set papelID(int value) {
    _papelID = value;
  }

  /// Registra o nome do funcionário que realizou login
  String _Nome = '';
  String get Nome => _Nome;
  set Nome(String value) {
    _Nome = value;
  }

  bool _LoginEfetuado = false;
  bool get LoginEfetuado => _LoginEfetuado;
  set LoginEfetuado(bool value) {
    _LoginEfetuado = value;
    prefs.setBool('ff_LoginEfetuado', value);
  }

  int _papelMembros = 0;
  int get papelMembros => _papelMembros;
  set papelMembros(int value) {
    _papelMembros = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
