import 'package:flutter/material.dart';
import 'package:patient/customAppBar.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: Text('Servise_page'),
            ),
          ),
        ],
      ),
    );
  }
}
