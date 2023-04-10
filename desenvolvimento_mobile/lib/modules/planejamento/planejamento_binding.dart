import 'package:desenvolvimento_mobile/modules/planejamento/planejamento_controller.dart';
import 'package:get/get.dart';

class Planejamentobinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlanejamentoController>(() => PlanejamentoController());
  }
}
