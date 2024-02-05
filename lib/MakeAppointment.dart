

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'appointmentSuccess.dart';

class ScheduleAppointment extends StatefulWidget {
  const ScheduleAppointment({super.key});

  @override
  State<ScheduleAppointment> createState() => _ScheduleAppointmentState();
}

class _ScheduleAppointmentState extends State<ScheduleAppointment> {
  DateTime today = DateTime.now();
  void _onDaySelect(DateTime day, DateTime focused) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule Appointment",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        iconTheme: const IconThemeData(size: 24, color: Colors.lightBlue),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Select Date",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Container(
                  child: TableCalendar(
                      locale: "en_US",
                      rowHeight: 28,
                      availableGestures: AvailableGestures.all,
                      onDaySelected: _onDaySelect,
                      focusedDay: today,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      firstDay: DateTime.utc(2010, 10, 6),
                      lastDay: DateTime.utc(2040, 10, 6))),
              const Text("Select Time",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 90,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  offset: Offset(0.6, 0.6),
                                  blurRadius: 0.7,
                                  spreadRadius: 0.8,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.lightBlue)),
                          child: const Center(
                              child: Text(
                            "08:00 am",
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ), 


SizedBox(height: 15),
                 const Text("Note For Doctor",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  
                  Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: 'Type your text here...',
                ),
              ),
            ),
                Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: GestureDetector(
                   onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppointmentSuccess(),
                    ));
              },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Center(
                      child: Text(
                        "Get Appointment",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlue),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: const Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 20, color: Colors.lightBlue),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ),
              ),  
                   ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
