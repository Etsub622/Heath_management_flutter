import 'package:flutter/material.dart';
import 'package:patient/HouseRequest.dart';
import 'package:patient/NotificationPage.dart';
import 'package:patient/Settings.dart';
import 'package:patient/customAppBar.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 10),
                      child:
                          Icon(Icons.search, color: Colors.lightBlue, size: 35),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(20),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                  hintText: 'Search for transport ...',
                  hintStyle:
                      const TextStyle(fontSize: 18, color: Colors.black26)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return HouseRequest();
              }));
            },
            child: const Text('house visit request'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NotificationPage();
              }));
            },
            child: const Text('notifications'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SettingPage();
              }));
            },
            child: const Text('settings'),
          ),
        ],
      ),
    );
  }
}
