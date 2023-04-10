import 'package:get/get.dart';

class PlanejamentoController extends GetxController {
  var showPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }
}
