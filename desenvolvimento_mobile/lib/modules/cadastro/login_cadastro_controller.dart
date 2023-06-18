import 'package:get/get.dart';

class LoginCadastroController extends GetxController{
  var showPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }
  
}