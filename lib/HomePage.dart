import 'package:flutter/material.dart';
import 'customAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:CustomAppBar(),
      
      body: Column(
        children: [
         SizedBox(height: 15),
         Row(
          children: [
            
          ],
         )
        ],
      ),
    );
  }
}
