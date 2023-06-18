import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;

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
  late String dataNascimento;
  late String usuario;
  late String email;
  late String senha;

  Usuario(this.nomeCompleto, this.dataNascimento, this.usuario, this.email, this.senha);

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

  Future initDb() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, "db_planejamento.db");
    database = openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) {
        return db.execute("CREATE TABLE IF NOT EXISTS $tabelaUsuario ( "
            "$idColumn INTEGER PRIMARY KEY,"
            "$nomeCompletoColumn TEXT,"
            "$dataNascimentoColumn TEXT,"
            "$usuarioColumn TEXT,"
            "$emailColumn TEXT,"
            "$senhaColumn TEXT)");
      },
    );
  }

  Future<int> salvarUsuario(Usuario usuario) async {
    final db = await database;
    return db.insert(tabelaUsuario, usuario.toMap());
  }

  Future<Usuario?> getUsuario(String usuario, String senha) async {
    final db =  await database;
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
    final db =  await database;
    return await db.update(tabelaUsuario, usuario.toMap(),
        where: "$idColumn = ?", whereArgs: [usuario.id]);
  }

  Future<List<Usuario>> getAllUsuarios() async {
    final db =  await database;
    List listMap = await db.rawQuery("SELECT * FROM tabelaUsuarios");
    List<Usuario> listUsuarios = [];
    for (Map m in listMap) {
      listUsuarios.add(Usuario.fromMap(m));
    }
    return listUsuarios;
  }

  Future<int> deleteUsuario(int id) async {
    final db =  await database;
    return await db.delete(tabelaUsuario, where: "$idColumn = ?", whereArgs: [id]);
  }
}
