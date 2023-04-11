import 'package:desenvolvimento_mobile/modules/n_hormonal/n_hormonal_controller.dart';
import 'package:get/get.dart';

class NHormonalbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NHormonalController>(() => NHormonalController());
  }
}
