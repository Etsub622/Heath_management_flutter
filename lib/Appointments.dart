import 'package:flutter/material.dart';
import 'appointmentDetail.dart';
import 'customAppBar.dart';

class Appointments extends StatefulWidget {
   Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}
class _AppointmentsState extends State<Appointments> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        title:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.lightBlue,
            child: Image(image: AssetImage("asset/images/logo.jpg")),
          ),
          Row(
            children: [
              Icon(
                Icons.notifications,
                size: 28,
                color: Colors.lightBlue,
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('asset/images/user.jpg'),
              ),
            ],
          ),
        ],
      ),
        bottom: TabBar(
           controller: _tabController,
          tabs: [
            Tab(text: 'Upcomming'),
            Tab(text: 'Completed'),
            Tab(text: 'Cancel'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [Column(
          children: [
          
        const SizedBox(height: 15,),
           GestureDetector(
                 onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppointmentDetail(),
                    ));
              },
             child: Container(
               decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners on all sides
                    border: Border.all(color: Colors.lightBlue),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 44, 44, 44),
                        offset: Offset(2, 2),
                        blurRadius: 3,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
               margin: const EdgeInsets.symmetric(horizontal: 20),
               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
               child: Row(children: [
                 const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/images/user.jpg'),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                   
                    child: Column(
                      children: [
                         Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dr. Hibakh Xassan",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Dentist",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 92, 91, 91)),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                   decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                                  child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                                ), const SizedBox(width: 18,), 
                                 Container(
                                  padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: BoxDecoration(
                            border: Border.all(color: Colors.lightBlue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                                  child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                                ),
                              ],
                            )
                            ]
                            )
                      ],
                    ),
                  )
               ],),
             ),
           ),
        const SizedBox(height: 15,),
           GestureDetector(
                 onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppointmentDetail(),
                    ));
              },
             child: Container(
               decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners on all sides
                    border: Border.all(color: Colors.lightBlue),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 44, 44, 44),
                        offset: Offset(2, 2),
                        blurRadius: 3,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
               margin: const EdgeInsets.symmetric(horizontal: 20),
               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
               child: Row(children: [
                 const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/images/user.jpg'),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                   
                    child: Column(
                      children: [
                         Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dr. Hibakh Xassan",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Dentist",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 92, 91, 91)),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                   onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppointmentDetail(),
                      ));
                },
                                  child: Container(
                                    padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                     decoration: const BoxDecoration(
                                                            color: Colors.lightBlue,
                                                            borderRadius: BorderRadius.all(Radius.circular(25))),
                                    child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                                  ),
                                ), const SizedBox(width: 18,), 
                                 Container(
                                  padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: BoxDecoration(
                            border: Border.all(color: Colors.lightBlue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                                  child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                                ),
                              ],
                            )
                            ]
                            )
                      ],
                    ),
                  )
               ],),
             ),
           ),
           const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
          
          ],
        ),
        Column(
          children: [
          
        const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
        const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
           const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
          
          ],
        ),
        Column(
          children: [
          
        const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
        const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
           const SizedBox(height: 15,),
           Container(
             decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Rounded corners on all sides
                  border: Border.all(color: Colors.lightBlue),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 44, 44, 44),
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
             margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
             child: Row(children: [
               const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
                const SizedBox(width: 15,),
                Container(
                 
                  child: Column(
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dr. Hibakh Xassan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 91, 91)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                                 decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Text("Edit",style: TextStyle(fontSize:20,color:Colors.white),),
                              ), const SizedBox(width: 18,), 
                               Container(
                                padding:const EdgeInsets.symmetric(horizontal:25,vertical: 10),
                               decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                                child: const Text("Cancel",style: TextStyle(fontSize:20,color:Colors.black),),
                              ),
                            ],
                          )
                          ]
                          )
                    ],
                  ),
                )
             ],),
           ),
          
          ],
        ),
        ]
      ),
    );
  }
}
