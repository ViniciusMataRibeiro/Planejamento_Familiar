import 'package:desenvolvimento_mobile/modules/cadastro/login_cadastro_controller.dart';
import 'package:get/get.dart';

class LoginCadastroBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginCadastroController>(() => LoginCadastroController());
  }

}