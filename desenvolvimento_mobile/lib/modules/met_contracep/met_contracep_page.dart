import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetContracepPage extends StatefulWidget {
  const MetContracepPage({super.key});

  @override
  State<MetContracepPage> createState() => _MetContracepPage();
}

class _MetContracepPage extends State<MetContracepPage> {
  bool isSelectSim = false;
  bool isSelectNao = false;
  int id = 1;
  String radioButtonItem = 'Sim';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/tela_registro.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Center(
                child: Container(
                  height: 140,
                  width: 140,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/design_login.png'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 60,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(color: Colors.white, width: 5),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'Você usa algum método para não',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'engravidar?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: 1,
                                groupValue: id,
                                onChanged: (index) {
                                  setState(() {
                                    radioButtonItem = 'sim';
                                    id = 1;
                                  });
                                }),
                            const Text(
                              'Sim',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: 2,
                                groupValue: id,
                                onChanged: (index) {
                                  setState(() {
                                    radioButtonItem = 'nao';
                                    id = 2;
                                  });
                                }),
                            const Text(
                              'Não',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              labelText: 'Se sim, qual?',
                              labelStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                              )
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Você faz planejamento',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'familiar?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              labelText: 'Se sim, qual?',
                              labelStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                              )
                            ),
                          ),
                        )
                      ],
                    ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        side: BorderSide(width: 2, color: Colors.black12)),
                  ),
                  child: const Text('Registrar',
                      style: TextStyle(fontSize: 30, color: Colors.redAccent)),
                ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
