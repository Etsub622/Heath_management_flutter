import 'package:flutter/material.dart';
import 'package:patient/BottomNav.dart';
import 'package:patient/Custombutton.dart';
import 'package:patient/Services.dart';
import 'package:patient/customTextField.dart';

class HouseRequest extends StatefulWidget {
  HouseRequest({super.key});

  @override
  State<HouseRequest> createState() => _HouseRequestState();
  final TextEditingController _whereController = TextEditingController();
  final TextEditingController _AtController = TextEditingController();
  final TextEditingController _OnController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
}

class _HouseRequestState extends State<HouseRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BottomNav();
                        }),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'House Visit Request',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 130,
                    child: Image.asset(
                      'asset/images/user.jpg',
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Dr. Hibak Xassan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Wants to visit you.'),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Where:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: CustomTextField(
                  controller: widget._whereController,
                  hintText: 'Enter the place',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'On:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: CustomTextField(
                    controller: widget._AtController,
                    hintText: 'Enter the date'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'At:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: CustomTextField(
                    controller: widget._AtController,
                    hintText: 'Enter the time'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Note for the doctor',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: TextFormField(
                  controller: widget._messageController,
                  decoration: InputDecoration(
                    hintText: 'message',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(115, 135, 132, 132),
                        fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.black26,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.black26,
                        )),
                    contentPadding: const EdgeInsets.all(8),
                  ),
                  maxLines: 4,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Custombutton(
                text: 'Request',
                backgroundColor: Colors.lightBlue,
                onTap: () {},
                textStyle: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Custombutton(
                text: 'Cancel',
                backgroundColor: Colors.white,
                onTap: () {},
                textStyle:
                    const TextStyle(fontSize: 16, color: Colors.lightBlue),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
