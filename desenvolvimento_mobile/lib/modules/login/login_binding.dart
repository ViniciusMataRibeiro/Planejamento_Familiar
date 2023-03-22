import 'package:desenvolvimento_mobile/modules/cadastro/login_cadastro_controller.dart';
import 'package:desenvolvimento_mobile/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
     Get.lazyPut<LoginCadastroController>(() => LoginCadastroController());
  }

}