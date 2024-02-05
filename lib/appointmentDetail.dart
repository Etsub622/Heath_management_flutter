import 'package:flutter/material.dart';

class AppointmentDetail extends StatefulWidget {
  const AppointmentDetail({super.key});

  @override
  State<AppointmentDetail> createState() => _AppointmentDetailState();
}

class _AppointmentDetailState extends State<AppointmentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(size: 24, color: Colors.lightBlue),
        ),
        body: Container(
            child: Column(children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
               
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/images/user.jpg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: const Column(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Hibakh Xassan",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Dentist",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 92, 91, 91)),
                              ),
                              Text(
                                "Located at Addis Ketema, AA",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 92, 91, 91)),
                              ),
                            ])
                      ],
                    ),
                  )
                ],
              )
            ),
            SizedBox(height:15,),
Container(child: Text("Appointed Date",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            SizedBox(height:15,),
            Container(
              width: 300,
              height: 60,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
               
              ),
              child: Center(child: Text("Jan 26,2024")),
            ), 
             SizedBox(height:15,),
Container(child: Text("For Date",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            SizedBox(height:15,),
            Container(
              width: 300,
              height: 60,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
               
              ),
              child: Center(child: Text("Jan 31,2024")),
            ),
             SizedBox(height:15,),
Container(child: Text("Time",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            SizedBox(height:15,),
            Container(
              width: 300,
              height: 60,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
               
              ),
              child: Center(child: Text("09:00 am")),
            ),
             SizedBox(height:15,),
Container(child: Text("Note",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            SizedBox(height:15,),
            Container(
              width: 300,
              height: 60,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
               
              ),
              child: Center(child: Text("note for doctor")),
            )
        ]
        )
        )
        );
  }
}
