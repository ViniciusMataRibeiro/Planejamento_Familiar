import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../providers/database_user.dart';

class LoginCadastroController extends GetxController{
  var showPassword = true.obs;
  var nomeCompletoController  = TextEditingController(text: '');
  var dataNascimentoController  = TextEditingController(text: '');
  var userController = TextEditingController(text: '');
  var emailController = TextEditingController(text: '');
  var passwordController = TextEditingController(text: '');

  final db = DatabaseProvider();

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  @override
  void onInit() {
    super.onInit();
    db.initDb().then((value) async {
    });
  }
  
  Future<String> cadastro() async {
    try {
      if (nomeCompletoController.text == "" || dataNascimentoController.text == "" || userController.text == "" || emailController.text == "" || passwordController.text == "") {
      return "Preencha todos os campos";
    }

    var usuario = Usuario(nomeCompletoController.toString(), dataNascimentoController.toString(), userController.toString(), emailController.toString(), passwordController.toString());
    var result = await db.salvarUsuario(usuario);

    return "ok";
    } catch (e) {
      return "Erro ao cadastrar";
    }
  }

}