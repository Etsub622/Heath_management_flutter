import 'package:flutter/material.dart';
import 'package:patient/customAppBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: Text('Profile_page'),
            ),
          ),
        ],
      ),
    );
  }
}
