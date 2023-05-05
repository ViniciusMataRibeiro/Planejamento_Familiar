import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const String tabelaUsuario = "tabelaUsuario";
const String idColumn = "idColumn";
const String nomeCompletoColumn = "nomeCompletoColumn";
const String dataNascimentoColumn = "dataNascimentoColumn";
const String usuarioColumn = "usuarioColumn";
const String emailColumn = "emailColumn";
const String senhaColumn = "senhaColumn";

class Usuario {
  late int id;
  late String nomeCompleto;
  late DateTime dataNascimento;
  late String usuario;
  late String email;
  late String senha;

  Usuario();

  Usuario.fromMap(Map map) {
    id = map[id];
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

  Future<Database> initDb() async {
    final dataBasesPath = await getDatabasesPath();
    final path = join(dataBasesPath, "db_planejamento.db");

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "Create TABLE $tabelaUsuario($idColumn INTEGER PRIMARY KEY,"
          "$nomeCompletoColumn STRING, $dataNascimentoColumn DATE, $usuarioColumn STRING, $emailColumn STRING, $senhaColumn STRING)");
    });
  }

  Future<int> salvarUsuario(Usuario usuario) async {
    final db = await DatabaseProvider().initDb();
    return db.insert(tabelaUsuario, usuario.toMap());
  }

  Future<Usuario?> getUsuario(int id) async {
    final db = await DatabaseProvider().initDb();
    List<Map> maps = await db.query(tabelaUsuario,
        columns: [
          idColumn,
          nomeCompletoColumn,
          dataNascimentoColumn,
          usuarioColumn,
          emailColumn,
          senhaColumn
        ],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Usuario.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> updateUsuario(Usuario usuario) async {
    final db = await DatabaseProvider().initDb();
    return await db.update(tabelaUsuario, usuario.toMap(),
        where: "$idColumn = ?", whereArgs: [usuario.id]);
  }

  Future<List<Usuario>> getAllUsuarios() async {
    final db = await DatabaseProvider().initDb();
    List listMap = await db.rawQuery("SELECT * FROM tabelaUsuarios");
    List<Usuario> listUsuarios = [];
    for (Map m in listMap) {
      listUsuarios.add(Usuario.fromMap(m));
    }
    return listUsuarios;
  }

  Future<int> deleteUsuario(int id) async {
    final db = await DatabaseProvider().initDb();
    return await db
        .delete(tabelaUsuario, where: "$idColumn = ?", whereArgs: [id]);
  }
}
