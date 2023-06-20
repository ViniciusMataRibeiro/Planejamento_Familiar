import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;

class Agenda {
  static const String tabelaCalandario = "tabelaCalandario";
  static const String idColumn = "idColumn";
  static const String diaColumn = "diaColumn";
  static const String mesColumn = "mesColumn";
  static const String anoColumn = "anoColumn";
  static const String descricaoColumn = "descricaoColumn";

  final int id;
  final int dia;
  final int mes;
  final int ano;
  final String descricao;

  Agenda(
      {required this.id,
      required this.dia,
      required this.mes,
      required this.ano,
      required this.descricao});

  Map<String, dynamic> toMap() {
    return {
      'diaColumn': dia,
      'mesColumn': mes,
      'anoColumn': ano,
      'descricaoColumn': descricao
    };
  }
}
