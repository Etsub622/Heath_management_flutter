import 'package:flutter/material.dart';
import 'package:patient/BottomNav.dart';
import 'package:patient/customAppBar.dart';
import 'package:patient/profileButton.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Icon(
                    Icons.logo_dev,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage('asset/images/user.jpg'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Full Name',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Email@gmail.com'),
          const SizedBox(
            height: 20,
          ),
          profileButton(
            text: 'Edit Profile',
            icon: Icons.edit_document,
            onTap: () {},
            icon2: Icons.arrow_forward,
          ),
          const SizedBox(
            height: 15,
          ),
          profileButton(
            text: 'Account Settings',
            icon: Icons.settings,
            onTap: () {},
            icon2: Icons.arrow_forward,
          ),
          const SizedBox(
            height: 15,
          ),
          profileButton(
            text: 'check your appointments',
            icon: Icons.lock_clock,
            onTap: () {},
            icon2: Icons.arrow_forward,
          ),
          const SizedBox(
            height: 15,
          ),
          profileButton(
            text: 'Logout',
            icon: Icons.logout_outlined,
            IconColor: Colors.red,
            onTap: () {},
            textColor: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        
      ),
    );
  }
}
