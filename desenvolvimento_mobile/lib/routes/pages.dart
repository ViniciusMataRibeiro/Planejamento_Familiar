
import 'package:desenvolvimento_mobile/modules/cadastro/login_page_cadastro.dart';
import 'package:desenvolvimento_mobile/modules/met_contracep/met_contracep_binding.dart';
import 'package:desenvolvimento_mobile/modules/met_contracep/met_contracep_page.dart';
import 'package:desenvolvimento_mobile/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';

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
  ];
}
