import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../providers/database_calendario.dart';
import '../../providers/database_user.dart';

class AgendaPage extends StatefulWidget {
  const AgendaPage({super.key});

  @override
  State<AgendaPage> createState() => _AgendaPage();
}

class _AgendaPage extends State<AgendaPage> {


  final DatabaseProvider dao = DatabaseProvider();
  List<Agenda> agenda = [];

  _AgendaPage() {
    dao.initDb().then((value) {
      load();
    });
  }

  load() {
    dao.getAllAgendas().then((value) {
      setState(() {
        agenda = value;
      });
    });
  }

  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }


  Widget _buildAgendaList() {

    var size = MediaQuery.of(context).size;


    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: agenda.length,
      itemBuilder: (context, index) {
        Agenda item = agenda[index];
        return Container(
          height: size.height*0.11,
          child: Card(
            margin: const EdgeInsets.all(0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color.fromARGB(250, 255, 115, 95),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              'Data: ${item.dia}/${item.mes}/${item.ano}\nTarefa: ${item.descricao}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(250, 255, 115, 95),
          iconTheme: const IconThemeData(color: Colors.white, size: 40),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(230, 255, 115, 95),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Get.toNamed('/planejamentofamiliar');
                  });
                },
                tileColor: const Color.fromARGB(0, 255, 115, 95),
                iconColor: Colors.white,
                leading: const Icon(Icons.family_restroom_outlined, size: 40),
                title: const Text('Planejamento Familiar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Get.toNamed('/tabu');
                  });
                },
                tileColor: const Color.fromARGB(0, 255, 115, 95),
                iconColor: Colors.white,
                leading: const Icon(Icons.chat_sharp, size: 40),
                title: const Text('Quebrando o Tabu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Get.toNamed('/hormonal');
                  });
                },
                tileColor: const Color.fromARGB(0, 255, 115, 95),
                iconColor: Colors.white,
                leading: const Icon(Icons.add_circle_outline, size: 40),
                title: const Text('Métodos Hormonais',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Get.toNamed('/naoHormonal');
                  });
                },
                tileColor: const Color.fromARGB(0, 255, 115, 95),
                iconColor: Colors.white,
                leading: const Icon(Icons.add_circle_rounded, size: 40),
                title: const Text('Métodos não Hormanais',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              padding: const EdgeInsets.all(12),
              color: const Color.fromARGB(250, 255, 115, 95),
              child: TableCalendar(
                locale: Localizations.localeOf(context).languageCode,
                rowHeight: 45,
                calendarStyle: CalendarStyle(
                  weekendTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 20),
                  defaultTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 20),
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(width: 3, color: Colors.black),
                  ),
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  leftChevronIcon:
                      Icon(Icons.chevron_left, color: Colors.white, size: 35),
                  rightChevronIcon:
                      Icon(Icons.chevron_right, color: Colors.white, size: 35),
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
                daysOfWeekStyle: DaysOfWeekStyle(
                    dowTextFormatter: (date, locale) =>
                        DateFormat('EEEE', locale)
                            .format(date)
                            .toUpperCase()[0],
                    weekendStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    weekdayStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              child: _buildAgendaList(),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: () {
                    _showConfirmationDialog();
                  },
                  backgroundColor: const Color.fromARGB(250, 255, 115, 95),
                  child: const Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void _insertDataToDatabase(String desc) async {
    // Crie um novo objeto Agenda com os dados que deseja inserir
    Agenda novaAgenda = Agenda(
        id: 0, // O valor do ID será atribuído automaticamente pelo banco de dados
        dia: today.day,
        mes: today.month,
        ano: today.year,
        descricao: desc);

    // Insira o objeto no banco de dados
    dao.insert(novaAgenda);

    // Atualize a lista de agendas chamando o método load()
    load();
  }

  void _showConfirmationDialog() {
    TextEditingController descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Confirmação',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Deseja cadastrar uma data?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Data selecionada: ${today.day}/${today.month}/${today.year}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o modal
              },
            ),
            TextButton(
              child: const Text(
                'Confirmar',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                String description = descriptionController.text;
                if (description.isNotEmpty) {
                  _insertDataToDatabase(
                      description); // Chama o método para inserir os dados no banco de dados
                  Navigator.of(context).pop(); // Fecha o modal
                } else {
                  // Exiba um aviso ou realize alguma ação quando a descrição estiver vazia
                }
              },
            ),
          ],
        );
      },
    );
  }
}
