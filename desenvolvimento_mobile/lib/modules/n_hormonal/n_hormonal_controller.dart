import 'package:get/get.dart';

class NHormonalController extends GetxController {
  var showPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }
}
