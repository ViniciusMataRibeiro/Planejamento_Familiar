import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;

import 'database_calendario.dart';

const String tabelaUsuario = "tabelaUsuario";
const String idColumn = "idColumn";
const String nomeCompletoColumn = "nomeCompletoColumn";
const String dataNascimentoColumn = "dataNascimentoColumn";
const String usuarioColumn = "usuarioColumn";
const String emailColumn = "emailColumn";
const String senhaColumn = "senhaColumn";

const String tabelaCalandario = "tabelaCalandario";

class Usuario {
  late int id;
  late String nomeCompleto;
  late String dataNascimento;
  late String usuario;
  late String email;
  late String senha;

  Usuario(this.nomeCompleto, this.dataNascimento, this.usuario, this.email,
      this.senha);

  Usuario.fromMap(Map map) {
    id = map[idColumn];
    nomeCompleto = map[nomeCompletoColumn];
    dataNascimento = map[dataNascimentoColumn];
    usuario = map[usuarioColumn];
    email = map[emailColumn];
    senha = map[senhaColumn];
  }

  Map<String, dynamic> toMap() {
    return {
      nomeCompletoColumn: nomeCompleto,
      dataNascimentoColumn: dataNascimento,
      usuarioColumn: usuario,
      emailColumn: email,
      senhaColumn: senha
    };
  }
}

class DatabaseProvider {
  static final DatabaseProvider _instance = DatabaseProvider.internal();
  factory DatabaseProvider() => _instance;
  DatabaseProvider.internal();
  late Future<Database> database;
  static const String databaseName = 'db_planejamento.db';

  Future<void> initDb() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, databaseName);
    database = openDatabase(
      path,
      version: 6, // Incrementa a versão do banco de dados
      onCreate: (db, version) {
        return _criarTabelas(db);
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < newVersion) {
          return _atualizarTabelas(db);
        }
      },
    );
  }

  void _atualizarTabelas(Database db) {
    // Adicione aqui a lógica para atualizar as tabelas existentes, se necessário
    _criarTabelas(db);
  }

  void _createUserTable(Database db) {
    db.execute("CREATE TABLE IF NOT EXISTS $tabelaUsuario ( "
        "$idColumn INTEGER PRIMARY KEY,"
        "$nomeCompletoColumn TEXT,"
        "$dataNascimentoColumn TEXT,"
        "$usuarioColumn TEXT,"
        "$emailColumn TEXT,"
        "$senhaColumn TEXT)");
  }

  Future<int> salvarUsuario(Usuario usuario) async {
    final db = await database;
    return db.insert(tabelaUsuario, usuario.toMap());
  }

  Future<Usuario?> getUsuario(String usuario, String senha) async {
    final db = await database;
    List<Map> maps = await db.query(tabelaUsuario,
        columns: [
          idColumn,
          nomeCompletoColumn,
          dataNascimentoColumn,
          usuarioColumn,
          emailColumn,
          senhaColumn
        ],
        where: "$emailColumn = ?",
        whereArgs: [usuario]);
    if (maps.isNotEmpty) {
      return Usuario.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> updateUsuario(Usuario usuario) async {
    final db = await database;
    return await db.update(tabelaUsuario, usuario.toMap(),
        where: "$idColumn = ?", whereArgs: [usuario.id]);
  }

  Future<List<Usuario>> getAllUsuarios() async {
    final db = await database;
    List listMap = await db.rawQuery("SELECT * FROM tabelaUsuarios");
    List<Usuario> listUsuarios = [];
    for (Map m in listMap) {
      listUsuarios.add(Usuario.fromMap(m));
    }
    return listUsuarios;
  }

  Future<int> deleteUsuario(int id) async {
    final db = await database;
    return await db
        .delete(tabelaUsuario, where: "$idColumn = ?", whereArgs: [id]);
  }

  void _createAgendaTable(Database db) {
    db.execute("CREATE TABLE IF NOT EXISTS ${Agenda.tabelaCalandario} ( "
        "${Agenda.idColumn} INTEGER PRIMARY KEY,"
        "${Agenda.diaColumn} INTEGER,"
        "${Agenda.mesColumn} INTEGER,"
        "${Agenda.anoColumn} INTEGER,"
        "${Agenda.descricaoColumn} TEXT)");
  }

  Future<List<Agenda>> getAllAgendas() async {
    //carrega o banco de dados
    final Database db = await database;
    //aramzena todos os registro em uma lista Map
    final List<Map<String, dynamic>> maps =
        await db.query(Agenda.tabelaCalandario);

    //transfprma o Map JSON em um objeto Despesa
    return List.generate(maps.length, (i) {
      return Agenda(
          id: maps[i][Agenda.idColumn],
          dia: maps[i][Agenda.diaColumn],
          mes: maps[i][Agenda.mesColumn],
          ano: maps[i][Agenda.anoColumn],
          descricao: maps[i][Agenda.descricaoColumn]);
    });
  }

  // Método para inserir um contato na banco de dados
  Future<int> insert(Agenda agenda) async {
    final Database db = await database;
    int id = await db.insert(
      Agenda.tabelaCalandario,
      agenda.toMap(),
    );
    return id;
  }

  // Método para atualizar uma agenda existente
  Future<void> updateAgenda(Agenda agenda) async {
    final Database db = await database;
    await db.update(
      Agenda.tabelaCalandario,
      agenda.toMap(),
      where: '${Agenda.idColumn} = ?',
      whereArgs: [agenda.id],
    );
  }

// Método para excluir uma agenda
  Future<void> deleteAgenda(int id) async {
    final Database db = await database;
    await db.delete(
      Agenda.tabelaCalandario,
      where: '${Agenda.idColumn} = ?',
      whereArgs: [id],
    );
  }

  void _criarTabelas(Database db) {
    _createAgendaTable(db);
    _createUserTable(db);
  }
}
