import 'package:desenvolvimento_mobile/modules/hormonal/hormonal_controller.dart';
import 'package:get/get.dart';

class Hormonalbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HormonalController>(() => HormonalController());
  }
}
