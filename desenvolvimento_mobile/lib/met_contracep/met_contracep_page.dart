import 'package:flutter/material.dart';
import 'package:desenvolvimento_mobile/met_contracep/met_contracep_controller.dart';
import 'package:get/get.dart';

class MetContracepPage extends StatefulWidget {
  const MetContracepPage({super.key});

  @override
  State<MetContracepPage> createState() => _MetContracepPage();
}

class _MetContracepPage extends State<MetContracepPage> {

  bool isSelectSim = false;
  bool isSelectNao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/metodos_tela.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              const SizedBox(height: 110),
              Container(
                height: 450,
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
                      children: [
                      const  SizedBox(width: 35),
                      const Text('Sim',
                      style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                    ),
                    const SizedBox(width: 3),
                    GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isSelectSim = !isSelectSim;
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.fastLinearToSlowEaseIn,
                            decoration: BoxDecoration(
                              color: isSelectSim
                                  ? Colors.redAccent
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5.0),
                              border: isSelectSim
                                  ? null
                                  : Border.all(color: Colors.white, width: 2),
                            ),
                            width: 23,
                            height: 23,
                            child: isSelectSim
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      const SizedBox( width: 85),
                      const Text('Não',
                      style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                    ),
                    const SizedBox(width: 3),
                    GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isSelectNao = !isSelectNao;
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.fastLinearToSlowEaseIn,
                            decoration: BoxDecoration(
                              color: isSelectNao
                                  ? Colors.redAccent
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5.0),
                              border: isSelectNao
                                  ? null
                                  : Border.all(color: Colors.white, width: 2),
                            ),
                            width: 23,
                            height: 23,
                            child: isSelectNao
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      ],
                    ),
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