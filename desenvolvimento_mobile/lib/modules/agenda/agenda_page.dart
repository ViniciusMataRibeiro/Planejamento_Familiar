import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class AgendaPage extends StatefulWidget {
 const AgendaPage({super.key});

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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(250, 255, 115, 95),
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 40
          ),
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
                tileColor:  const Color.fromARGB(0, 255, 115, 95),
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
                  weekendTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  defaultTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      width: 3,
                      color: Colors.black
                    ), 
                  ),
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      width: 2,
                      color: Colors.white
                    ),                   
                  ),
                ),
                headerStyle: const HeaderStyle(
                formatButtonVisible: false, 
                titleCentered: true,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                leftChevronIcon: Icon(Icons.chevron_left, 
                color: Colors.white,
                size: 35),
                rightChevronIcon: Icon(Icons.chevron_right, 
                color: Colors.white,
                size: 35),
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
                daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) =>
                  DateFormat('EEEE', locale).format(date).toUpperCase()[0],
                  weekendStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  weekdayStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )
            ),
              ),
            ),
          ],
        ));
  }
}
