import 'package:flutter/material.dart';
import 'package:patient/customAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: Text('home_page'),
            ),
          ),
        ],
      ),
    );
  }
}
