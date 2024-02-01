import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('asset/images/logo.jpg'),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 38,
                    color: Colors.blue,
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
        ),
      ),
    );
  }
}
