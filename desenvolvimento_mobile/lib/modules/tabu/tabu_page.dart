import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabuPage extends StatefulWidget {
  const TabuPage({super.key});

  @override
  State<TabuPage> createState() => _TabuPage();
}

class _TabuPage extends State<TabuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.message,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 249, 104, 83),
        title: Row(
          children: const [
              Text(
                'Quebrando o tabu',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600),
              ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 870,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 249, 104, 83), // Cor da borda
                width: 2, // Largura da borda
              ),
              borderRadius: BorderRadius.circular(8), // Bordas arredondadas
            ),
            padding: const EdgeInsets.all(10), // Espaçamento interno
            child: Column(
              children: const [
                Text(
                  'Planejamneto Familiar',
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
                  'CURIOSIDADE: Os jovens têm a tendência de transarem ' +
                      'mais de 100 vezes por ano. De acordo com o Kinsey Institute ' +
                      'for Research in Sex, Gender and Reprodution, nos Estados Unidos, ' +
                      'as pessoas de 18 a 29 anos possuem, em média, 110 relações sexuais por ano, ' +
                      'ao passo que os adultos de 30 a 39 anos transam 86 vezes por ano. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'O sexo ajuda a reduzir o estresse. Pois, durante a ' +
                      'relação sexual há liberação de hormônios como a endorfina, ' +
                      'que ajuda a aliviar o estresse e diminuir a tensão, ' +
                      'e seu efeito se prolonga após relação. ' +
                      'Além disso, a ocitocina, que considerado o hormônio do amor, ' +
                      'que também é liberado durante o sexo, junto com a ' +
                      'endorfina ele criam uma sensação de relaxamento e prazer. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'CURIOSIDADE: É possível ter orgasmo praticando atividades físicas, ' +
                      'porém não é tão comum, algumas mulheres conseguem ter orgasmo ' +
                      'enquanto realizam algum exercício físico, principalmente, ' +
                      'quando fazem abdominais. São os coreorgasmos!',
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
