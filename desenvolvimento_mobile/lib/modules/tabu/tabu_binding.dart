import 'package:desenvolvimento_mobile/modules/tabu/tabu_controller.dart';
import 'package:get/get.dart';

class Tabubinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabuController>(() => TabuController());
  }
}
