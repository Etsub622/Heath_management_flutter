import 'package:flutter/material.dart';
import 'package:patient/customAppBar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: Text('Search_page'),
            ),
          ),
        ],
      ),
    );
  }
}
