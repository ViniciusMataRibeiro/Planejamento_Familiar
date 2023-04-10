import 'package:get/get.dart';

class HormonalController extends GetxController {
  var showPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }
}
