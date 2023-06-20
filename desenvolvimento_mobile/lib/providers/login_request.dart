import 'dart:async';
import 'database_user.dart';

class LoginRequest {
  DatabaseProvider con = DatabaseProvider();
  Future<Usuario?> getLogin(String login, String senha) {
    var result = con.getUsuario(login, senha);
    return result;
  }
}