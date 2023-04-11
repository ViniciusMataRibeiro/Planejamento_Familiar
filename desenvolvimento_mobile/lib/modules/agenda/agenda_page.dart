import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaPage extends StatefulWidget {
  AgendaPage({super.key});

  @override
  State<AgendaPage> createState() => _AgendaPage();
}

class _AgendaPage extends State<AgendaPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(190, 255, 115, 95),
          child: ListView(
            children: const [
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Colors.redAccent,
                iconColor: Colors.white,
                leading: Icon(Icons.family_restroom_outlined, size: 40),
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
                leading: Icon(Icons.family_restroom_outlined, size: 40),
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
                leading: Icon(Icons.family_restroom_outlined, size: 40),
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
                leading: Icon(Icons.family_restroom_outlined, size: 40),
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
        body: Column(
          children: [
            Container(
              child: TableCalendar(
                locale: Localizations.localeOf(context).languageCode,
                rowHeight: 45,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
              ),
            ),
          ],
        ));
  }
}
