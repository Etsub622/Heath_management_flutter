import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.lightBlue,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.notifications,
                size: 38,
                color: Colors.lightBlue,
              ),
              Container(
                width: 35,
                height: 35,
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('asset/images/user.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
