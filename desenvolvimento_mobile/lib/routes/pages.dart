import 'package:desenvolvimento_mobile/modules/agenda/agenda_binding.dart';
import 'package:desenvolvimento_mobile/modules/agenda/agenda_page.dart';
import 'package:desenvolvimento_mobile/modules/cadastro/login_page_cadastro.dart';
import 'package:desenvolvimento_mobile/modules/met_contracep/met_contracep_binding.dart';
import 'package:desenvolvimento_mobile/modules/met_contracep/met_contracep_page.dart';
import 'package:desenvolvimento_mobile/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/hormonal/hormonal_binding.dart';
import '../modules/hormonal/hormonal_page.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
import '../modules/n_hormonal/n_hormonal_binding.dart';
import '../modules/n_hormonal/n_hormonal_page.dart';
import '../modules/planejamento/planejamento_binding.dart';
import '../modules/planejamento/planejamento_page.dart';
import '../modules/tabu/tabu_binding.dart';
import '../modules/tabu/tabu_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.cadastro,
      page: () => const LoginPageCadastro(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.metContracep,
      page: () => const MetContracepPage(),
      binding: MetContracepBinding(),
    ),
    GetPage(
      name: Routes.agenda,
      page: () => const AgendaPage(),
      binding: AgendaBinding(),
    ),
    GetPage(
      name: Routes.planejamentoFamiliar,
      page: () => const PlanejamentoPage(),
      binding: Planejamentobinding(),
    ),
    GetPage(
      name: Routes.tabu,
      page: () => const TabuPage(),
      binding: Tabubinding(),
    ),
    GetPage(
      name: Routes.hormonal,
      page: () => const HormonalPage(),
      binding: Hormonalbinding(),
    ),
    GetPage(
      name: Routes.naoHormonal,
      page: () => const NHormonalPage(),
      binding: NHormonalbinding(),
    ),
  ];
}
