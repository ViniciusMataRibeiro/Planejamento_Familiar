import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HormonalPage extends StatefulWidget {
  const HormonalPage({super.key});

  @override
  State<HormonalPage> createState() => _HormonalPage();
}

class _HormonalPage extends State<HormonalPage> {

  final Uri _urlCervical = Uri.parse('https://www.vivasuavida.com.br/metodos-contraceptivos/contraceptivos-curta-duracao/capuz-cervical');
  final Uri _urlInjetavel = Uri.parse('https://www.tuasaude.com/injecao-anticoncepcional-mensal/');
  final Uri _urlOral = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/pilula-anticoncepcional');
  final Uri _urlDiu = Uri.parse('https://www.clinicaceu.com.br/blog/o-que-voce-precisa-saber-sobre-diu/');
  final Uri _urlEsponja = Uri.parse('https://bedmed.com.br/ginecologia-conheca-esponja-vaginal/');
  final Uri _urlAnel = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/anel-vaginal');
  final Uri _urlAdesivo = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/adesivo');
  final Uri _urlImplante = Uri.parse('https://drdanielstellin.com.br/implantes-hormonais/');
  final Uri _urlPilula = Uri.parse('https://www.gineco.com.br/saude-feminina/materias-2/pilula-do-dia-seguinte');

  Future<void> _cervical() async {
    if(!await launchUrl(_urlCervical)){
      throw Exception('Could not launch $_urlCervical');
    }
    else{
      await launchUrl(_urlCervical);
    }
  }

    Future<void> _injetavel() async {
    if(!await launchUrl(_urlInjetavel)){
      throw Exception('Could not launch $_urlInjetavel');
    }
    else{
      await launchUrl(_urlInjetavel);
    }
  }

    Future<void> _oral() async {
    if(!await launchUrl(_urlOral)){
      throw Exception('Could not launch $_urlOral');
    }
    else{
      await launchUrl(_urlOral);
    }
  }

  Future<void> _diu() async {
    if(!await launchUrl(_urlDiu)){
      throw Exception('Could not launch $_urlDiu');
    }
    else{
      await launchUrl(_urlDiu);
    }
  }

    Future<void> _esponja() async {
    if(!await launchUrl(_urlEsponja)){
      throw Exception('Could not launch $_urlEsponja');
    }
    else{
      await launchUrl(_urlEsponja);
    }
  }

    Future<void> _anel() async {
    if(!await launchUrl(_urlAnel)){
      throw Exception('Could not launch $_urlAnel');
    }
    else{
      await launchUrl(_urlAnel);
    }
  }

    Future<void> _adesivo() async {
    if(!await launchUrl(_urlAdesivo)){
      throw Exception('Could not launch $_urlAdesivo');
    }
    else{
      await launchUrl(_urlAdesivo);
    }
  }

    Future<void> _implante() async {
    if(!await launchUrl(_urlImplante)){
      throw Exception('Could not launch $_urlImplante');
    }
    else{
      await launchUrl(_urlImplante);
    }
  }

    Future<void> _pilula() async {
    if(!await launchUrl(_urlPilula)){
      throw Exception('Could not launch $_urlPilula');
    }
    else{
      await launchUrl(_urlPilula);
    }
  }

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
        title: Row(
          children: const [
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
          ],
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
                  'Os métodos para prevenção a gravidez ou chamados de contraceptivos hormonais ' +
                  'são métodos que tem em sua formação várias concentrações sintéticas de hormônios ' + 
                  'femininos do organismo humano, sendo eles: estrógeno e progesterona. Tendo em ' + 
                  'vista isso, os métodos podem ter um hormônio só ou os dois hormônios juntos.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: _cervical,
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
                          ElevatedButton(
                              onPressed: _injetavel,
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
                          ElevatedButton(
                            onPressed: _oral,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                         // SizedBox(width: 35),
                          Text('Capuz\nCervical'),
                          //SizedBox(width: 56),
                          Text('Anticoncep.\n  Injetavel'),
                          //SizedBox(width: 40),
                          Text('Anticoncep.\n      Oral')
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: _diu,
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
                          ElevatedButton(
                              onPressed: _esponja,
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
                          ElevatedButton(
                            onPressed: _anel,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                         // SizedBox(width: 35),
                          Text('DIU\nHormonal'),
                          //SizedBox(width: 56),
                          Text('Esponja\n Contraceptiva'),
                          //SizedBox(width: 40),
                          Text('Anel\n Vaginal')
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: _adesivo,
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
                          ElevatedButton(
                              onPressed: _implante,
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
                          ElevatedButton(
                            onPressed: _pilula,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                         // SizedBox(width: 35),
                          Text('Adesivo'),
                          //SizedBox(width: 56),
                          Text('Implante\n Hormonal'),
                          //SizedBox(width: 40),
                          Text('Pilula do\n dia seguinte')
                        ],
                      ),
                      const SizedBox(height: 20),
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
