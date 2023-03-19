import 'package:flutter/material.dart';
import 'package:desenvolvimento_mobile/met_contracep/met_contracep_controller.dart';
import 'package:get/get.dart';

class MetContracepPage extends GetView<MetContracepController> {
  const MetContracepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/tela_login.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(top: 80),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/design_login.png'),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                ),
              ),
              Container(
                height: 420,
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const  BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    color: Colors.white,
                    width: 5
                  )
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    const Text('Você usa algum método para não',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                    const Text('engravidar?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const  [
                      SizedBox(width: 40),
                      Text('Sim',
                      style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                    ),
                    SizedBox(width: 115),
                      Text('Não',
                      style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                    ),
                      ],
                    )
                  ],
                )
              ),
            ]
          )
        )
      )
    );
  }
}