import 'package:desenvolvimento_mobile/providers/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var showPassword = true.obs;

  var emailController = TextEditingController(text: 'admin@email.com');
  var passwordController = TextEditingController(text: '123456');
  final db = DatabaseProvider();
  List<Usuario> usuarios = [];
  
  @override
  void onInit() {
    super.onInit();
    db.initDb().then((value) async {
      await populabancoUsuario();
      //load();
    });
  }

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  Future<String> goTologin() async {
    await populabancoUsuario();
    var usuario = await db.getUsuario(emailController.text, passwordController.text);

    if (usuario != null) {
       Future.delayed(const Duration(milliseconds: 1), () {
          Get.offAllNamed('/agenda');
        });
      return "ok";
    } 

    return "Senha ou Email incorretos";
  }

  Future<bool?> toast(String message) {
    Fluttertoast.cancel();
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 4,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 15.0);
  }

  load() {
    db.getAllUsuarios().then((value) {
      usuarios = value;
      emailController.text = "";
      passwordController.text = "";
    });
  }

  Future<void> populabancoUsuario() async {
    List<Usuario> usuarios = [];
    usuarios.add(Usuario("administrador", DateTime.now().toString(), "admin", "admin@email.com", "123456"));
    for (var i = 0; i < usuarios.length; i++) {
      await db.salvarUsuario(usuarios[i]);
    }
  }
}