import 'package:get/get.dart';

class AgendaController extends GetxController{
  var showPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }
}