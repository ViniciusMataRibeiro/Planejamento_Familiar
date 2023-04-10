import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'agenda_controller.dart';

class AgendaPage extends GetView<AgendaController> {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor:const Color.fromARGB(190, 255, 115, 95),
        child: ListView(
          children: const [
             SizedBox(height: 30,),
             ListTile(
              tileColor: Colors.redAccent,
              iconColor: Colors.white,
              leading: Icon(Icons.family_restroom_outlined,
              size: 40),
              title: Text('Planejamento Familiar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )),
            ),
            Divider(
              thickness: 2,
            ),
             ListTile(
              tileColor: Colors.redAccent,
              iconColor: Colors.white,
              leading: Icon(Icons.family_restroom_outlined,
              size: 40),
              title: Text('Quebrando o Tabu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )),
            ),
            Divider(
              thickness: 2,
            ),
             ListTile(
              tileColor: Colors.redAccent,
              iconColor: Colors.white,
              leading: Icon(Icons.family_restroom_outlined,
              size: 40),
              title: Text('Métodos Hormonais',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )),
            ),
            Divider(
              thickness: 2,
            ),
             ListTile(
              tileColor: Colors.redAccent,
              iconColor: Colors.white,
              leading: Icon(Icons.family_restroom_outlined,
              size: 40),
              title: Text('Métodos não Hormanais',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Agenda'),
      ),
      body: const Center(
        child: Text('Teste'),
      ),
    );
  }
}