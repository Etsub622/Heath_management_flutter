import 'package:flutter/material.dart';
import 'package:hms/BottomNav.dart';
import 'package:hms/HomePage.dart';

class AppointmentSuccess extends StatefulWidget {
  const AppointmentSuccess({super.key});

  @override
  State<AppointmentSuccess> createState() => _AppointmentSuccessState();
}

class _AppointmentSuccessState extends State<AppointmentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(children: [
                      SizedBox(height: 200),
Container(child: Column(children: [
  Icon(Icons.check_circle,size: 80, color: Colors.lightBlue,), 
  SizedBox(height: 15,),
  Text("Thank You For Appointing!!",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
],),),
       
       SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(color: Colors.blue[50]),
            margin:EdgeInsets.symmetric(horizontal: 30),
            padding:EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            height: 120,
            child: Column(
            children: [
              Row(
                children: [
                  Text("Doctor Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 18,),
Text("Dr. Hibak Xassan")
                ],
              ), 
               Row(
                children: [
                  Text("Date:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 90,),
                   Text("Mar 20, 2024")
                ],
              ),
               Row(
                children: [
                  Text("Time:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 90,),
                   Text("09:00 am")
                ],
              ),
               Row(
                children: [
                  Text("Location:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 45,),
                   Text("Addis Ketema, AA")
                ],
              )
            ],
          ),),
          SizedBox(height: 30),
             Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: GestureDetector(
                       onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNav(),
                      ));
                },
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
                              "Home",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.lightBlue),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  ),
                ), 
          ]),
        ),
      )
    );
  }
}
