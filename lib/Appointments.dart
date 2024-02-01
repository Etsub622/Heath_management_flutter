import 'package:flutter/material.dart';
import 'package:patient/customAppBar.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: Text('Appointment_page'),
            ),
          ),
        ],
      ),
    );
  }
}
