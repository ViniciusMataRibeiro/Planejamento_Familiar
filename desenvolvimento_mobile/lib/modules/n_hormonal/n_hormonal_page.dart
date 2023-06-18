import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NHormonalPage extends StatefulWidget {
  const NHormonalPage({super.key});

  @override
  State<NHormonalPage> createState() => _NHormonalPage();
}

class _NHormonalPage extends State<NHormonalPage> {

  final Uri _urlTabelinha = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/outros-metodos');
  final Uri _urlMuco = Uri.parse('https://www.tuasaude.com/muco-cervical/');
  final Uri _urlBasal = Uri.parse('https://www.fetalmed.net/temperatura-basal-o-que-e-e-como-controlar/');
  final Uri _urlCoito = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/coito-interrompido');
  final Uri _urlCamisinhaF = Uri.parse('https://mundoeducacao.uol.com.br/sexualidade/camisinha-feminina.htm');
  final Uri _urlCamisinhaM = Uri.parse('https://mundoeducacao.uol.com.br/sexualidade/camisinha-masculina.htm');
  final Uri _urlAdesivo = Uri.parse('https://www.gineco.com.br/saude-feminina/metodos-contraceptivos/adesivo');
  final Uri _urlImplante = Uri.parse('https://drdanielstellin.com.br/implantes-hormonais/');
  final Uri _urlPilula = Uri.parse('https://www.gineco.com.br/saude-feminina/materias-2/pilula-do-dia-seguinte');

  Future<void> _tabelinha() async {
    if(!await launchUrl(_urlTabelinha)){
      throw Exception('Could not launch $_urlTabelinha');
    }
    else{
      await launchUrl(_urlTabelinha);
    }
  }

    Future<void> _muco() async {
    if(!await launchUrl(_urlMuco)){
      throw Exception('Could not launch $_urlMuco');
    }
    else{
      await launchUrl(_urlMuco);
    }
  }

    Future<void> _basal() async {
    if(!await launchUrl(_urlBasal)){
      throw Exception('Could not launch $_urlBasal');
    }
    else{
      await launchUrl(_urlBasal);
    }
  }

  Future<void> _coito() async {
    if(!await launchUrl(_urlCoito)){
      throw Exception('Could not launch $_urlCoito');
    }
    else{
      await launchUrl(_urlCoito);
    }
  }

    Future<void> _camisinhaF() async {
    if(!await launchUrl(_urlCamisinhaF)){
      throw Exception('Could not launch $_urlCamisinhaF');
    }
    else{
      await launchUrl(_urlCamisinhaF);
    }
  }

    Future<void> _camisinhaM() async {
    if(!await launchUrl(_urlCamisinhaM)){
      throw Exception('Could not launch $_urlCamisinhaM');
    }
    else{
      await launchUrl(_urlCamisinhaM);
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
        backgroundColor: const Color.fromARGB(255, 249, 104, 83),
        title:const Row(
          children: [
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
                color: const Color.fromARGB(255, 249, 104, 83), // Cor da borda
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
                  'Esse método requer uma barreira mecânica como o uso do preservativo masculino ou do feminino, uma barreira química com o uso de espermicidas e de esponjas ou uma barreira mista como o diafragma e o capuz cervical. Vale lembrar que todos esses métodos de barreira podem ajudar a prevenir as ISTs, mas somente o preservativo feminino e o masculino oferecem alta proteção contra essas doenças, inclusive o HIV',
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
                            onPressed: _tabelinha,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.table_view_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),                                   
                                    width: 2)),
                          ),
                          ElevatedButton(
                              onPressed: _muco,
                              // ignore: sort_child_properties_last
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 32, 74, 158),
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.water_drop_rounded,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 154, 177, 255),
                                      width: 2)),
                            ),
                          ElevatedButton(
                            onPressed: _basal,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.device_thermostat,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         // SizedBox(width: 35),
                          Text('Tabelinha'),
                          //SizedBox(width: 56),
                          Text('\t\tMuco\n Cervical'),
                          //SizedBox(width: 40),
                          Text('\t\tTemp.\n   Basal')
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
                            onPressed: _coito,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.single_bed_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                          ElevatedButton(
                              onPressed: _camisinhaF,
                              // ignore: sort_child_properties_last
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 32, 74, 158),
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.radio_button_checked_outlined,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 154, 177, 255),
                                      width: 2)),
                            ),
                          ElevatedButton(
                            onPressed: _camisinhaM,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.radio_button_checked_outlined,
                                  color: Colors.white,
                                  size: 50,
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         // SizedBox(width: 35),
                          Text('Coito\nInterromp.'),
                          //SizedBox(width: 56),
                          Text('Camisinha\nFemin.'),
                          //SizedBox(width: 40),
                          Text('Camisinha\nMasc.')
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
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.square,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                          ElevatedButton(
                              onPressed: _implante,
                              // ignore: sort_child_properties_last
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 32, 74, 158),
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 154, 177, 255),
                                      width: 2)),
                            ),
                          ElevatedButton(
                            onPressed: _pilula,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.square,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                          ElevatedButton(
                              onPressed: _implante,
                              // ignore: sort_child_properties_last
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 32, 74, 158),
                                    shape: BoxShape.circle,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Color.fromARGB(255, 154, 177, 255),
                                      width: 2)),
                            ),
                          ElevatedButton(
                            onPressed: _pilula,
                            // ignore: sort_child_properties_last
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 32, 74, 158),
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 3)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 154, 177, 255),
                                    width: 2)),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
