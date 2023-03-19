import 'package:desenvolvimento_mobile/cadastro/login_page_cadastro.dart';
import 'package:desenvolvimento_mobile/login/login_page.dart';
import 'package:desenvolvimento_mobile/met_contracep/met_contracep_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MetContracepPage(),
    );
  }
}
