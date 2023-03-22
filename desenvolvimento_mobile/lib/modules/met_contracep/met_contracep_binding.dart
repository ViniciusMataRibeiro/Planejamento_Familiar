import 'package:desenvolvimento_mobile/modules/met_contracep/met_contracep_controller.dart';
import 'package:get/get.dart';

class MetContracepBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MetContracepController>(() => MetContracepController());
  }

}