import 'database_user.dart';
import 'login_request.dart';

abstract class LoginCallBack {
  void onLoginSuccess(Usuario user);
  void onLoginError(String error);
}

class LoginResponse 
{
  final LoginCallBack _callBack;
  LoginRequest loginRequest = LoginRequest();
  LoginResponse(this._callBack);
  doLogin(String username, String password) {
    loginRequest
        .getLogin(username, password)
        .then((user) => _callBack.onLoginSuccess(user!))
        .catchError((onError) => _callBack.onLoginError(onError.toString()));
  } 
}