import 'package:desenvolvimento_mobile/modules/agenda/agenda_controller.dart';
import 'package:get/get.dart';

class AgendaBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AgendaController>(() => AgendaController());
  }

}