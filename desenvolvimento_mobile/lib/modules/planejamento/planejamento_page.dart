import 'package:flutter/material.dart';

class PlanejamentoPage extends StatefulWidget {
  const PlanejamentoPage({super.key});

  @override
  State<PlanejamentoPage> createState() => _PlanejamentoPage();
}

class _PlanejamentoPage extends State<PlanejamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.family_restroom,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 249, 104, 83),
        title: const Center(
          child: Column(children: [
            Center(
              child: Text(
                'Planejamento familiar',
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
            height: 800,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 249, 104, 83), // Cor da borda
                width: 2, // Largura da borda
              ),
              borderRadius: BorderRadius.circular(8), // Bordas arredondadas
            ),
            padding: const EdgeInsets.all(12), // Espaçamento interno
            child: const Column(
              children: [
                Text(
                  'O que é Planejamento familiar?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  // ignore: prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation
                  'Planejamento familiar são ações criadas com o objetivo de orientar mulheres ' + 
                  'e homens quanto aos métodos contraceptivos, prevenção de gravidez não desejada ' +
                  'e direito de escolha de ter filhos ou não. E para aqueles casais que desejam ser pais, ' + 
                  'o planejamento familiar orienta sobre a importância da preparação do organismo feminino e ' + 
                  'da organização estrutural antes da chegada dos filhos. ' +
                  'Para que isto ocorra é necessário a assistência do serviço de saúde e o acompanhamento ' +
                  'médico, pois são eles que promovem o acesso à informação ' +
                  'sobre os métodos mais eficazes e seguros de acordo com as necessidades do paciente. ' + 
                  'Com isso, contribuir por meio de orientações para que o casal tenha ' +
                  'sua vivência da sexualidade com segurança e saúde, pois planejamento familiar é ' + 
                  'também sinônimo de bem-estar físico e mental de mulheres e homens.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
