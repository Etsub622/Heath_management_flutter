import 'package:flutter/material.dart';

import 'MakeAppointment.dart';
import 'customAppBar.dart';

class DoctorsDetail extends StatefulWidget {
  const DoctorsDetail({super.key});

  @override
  State<DoctorsDetail> createState() => _DoctorsDetailState();
}

class _DoctorsDetailState extends State<DoctorsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(size: 24, color: Colors.lightBlue),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
              ),
              const Text(
                "Dr. Hibakh Xassan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: Row(children: [
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: const Text(
                        "Dentist",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: const Text(
                        "+3 Experience",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                ]),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.location_on_outlined, color: Colors.lightBlue),
                  Text(
                    "Addis Ketema, AA",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.calendar_month, color: Colors.lightBlue),
                  Text(
                    "Mon/Wed/Fri",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.timer, color: Colors.lightBlue),
                  Text(
                    "8:00 AM/10:00AM",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: const Text(
                    "I am Doctor Hibak Xassan, a highly qualified dentist dedicated to providing exceptional dental care. My expertise spans various aspects of dentistry, including preventive care, restorative procedures, cosmetic dentistry, and oral surgery.To stay up to"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: GestureDetector(
                   onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScheduleAppointment(),
                    ));
              },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Center(
                      child: Text(
                        "Make Appointment",
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
                            width: 60,
                          ),
                          Text(
                            "Request for visit",
                            style: TextStyle(
                                fontSize: 20, color: Colors.lightBlue),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward,
                              size: 24, color: Colors.lightBlue)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text("Reviewers",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Container(
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(color: Colors.white,  boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 44, 44, 44),
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),] ),
                padding: const EdgeInsets.only(left: 23, right: 3),
                child: const Row(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/images/user.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Najuf Waraf",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                          width: 215,
                          child: Text(
                              "I had been struggling with dental anxiety for years,Thanks to Dr. Hibak, now I have healthy and beautiful smile. Highly recommended!")),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "Jan 26, 2024",
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ), 
              SizedBox(height: 12,),
              Container(
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(color: Colors.white,  boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 44, 44, 44),
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),] ),
                padding: const EdgeInsets.only(left: 23, right: 3),
                child: const Row(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/images/user.jpg'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Najuf Waraf",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                          width: 215,
                          child: Text(
                              "I had been struggling with dental anxiety for years,Thanks to Dr. Hibak, now I have healthy and beautiful smile. Highly recommended!")),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "Jan 26, 2024",
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              )
            ],
          )),
        ));
  }
}
