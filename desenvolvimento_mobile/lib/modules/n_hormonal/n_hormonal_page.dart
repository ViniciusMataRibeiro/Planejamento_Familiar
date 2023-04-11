import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NHormonalPage extends StatefulWidget {
  const NHormonalPage({super.key});

  @override
  State<NHormonalPage> createState() => _NHormonalPage();
}

class _NHormonalPage extends State<NHormonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.shield,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 249, 104, 83),
        title: Center(
          child: Column(children: const [
            Center(
              child: Text(
                'Tipos de métodos',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 249, 104, 83), // Cor da borda
                width: 2, // Largura da borda
              ),
              borderRadius: BorderRadius.circular(8), // Bordas arredondadas
            ),
            // padding: const EdgeInsets.only(
            //     top: 0, right: 50, left: 50, bottom: 50), // Espaçamento interno
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.settings_input_composite,
                        color: Colors.white,
                        size: 40,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Não Hormonal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Esse método requer uma barreira mecânica como o uso do preservativo masculino' + 
                  'ou do feminino, uma barreira química com o uso de espermicidas e de esponjas ou' + 
                  'uma barreira mista como o diafragma e o capuz cervical. Vale lembrar que todos esses' +
                  'métodos de barreira podem ajudar a prevenir as ISTs, mas somente o preservativo feminino' +
                  'e o masculino oferecem alta proteção contra essas doenças, inclusive o HIV',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Ação a ser executada quando o botão for pressionado
                            },
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 10)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.local_hospital_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 4)),
                          ),
                          Container(
                            padding: const EdgeInsets.all(50),
                            child: ElevatedButton(
                              onPressed: () {
                                // Ação a ser executada quando o botão for pressionado
                              },
                              // ignore: sort_child_properties_last
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 74, 158),
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 10)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.local_hospital_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 154, 177, 255),
                                      width: 4)),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Ação a ser executada quando o botão for pressionado
                            },
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 10)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.local_hospital_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 4)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
