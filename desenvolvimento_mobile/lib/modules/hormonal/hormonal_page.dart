import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HormonalPage extends StatefulWidget {
  const HormonalPage({super.key});

  @override
  State<HormonalPage> createState() => _HormonalPage();
}

class _HormonalPage extends State<HormonalPage> {
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
                        Icons.local_hospital_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Hormonal',
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
                  'Hormonal familiar são ações criadas com o objetivo de orientar mulheres' +
                      'e homens quanto aos métodos contraceptivos, prevenção de gravidez não desejada' +
                      'e direito de escolha de ter filhos ou não. E para aqueles casais que desejam ser pais,' +
                      'o Hormonal familiar orienta sobre a importância da preparação do organismo feminino e' +
                      'da organização estrutural antes da chegada dos filhos.' +
                      'Para que isto ocorra é necessário a assistência do serviço de saúde e o acompanhamento' +
                      'médico, pois são eles que promovem o acesso à informação' +
                      'sobre os métodos mais eficazes e seguros de acordo com as necessidades do paciente.' +
                      'Com isso, contribuir por meio de orientações para que o casal tenha' +
                      'sua vivência da sexualidade com segurança e saúde, pois Hormonal familiar é' +
                      'também sinônimo de bem-estar físico e mental de mulheres e homens.',
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
