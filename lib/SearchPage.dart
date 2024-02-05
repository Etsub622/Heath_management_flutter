import 'package:flutter/material.dart';
import 'DoctoresDetail.dart';
import 'customAppBar.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final _search = TextEditingController();
    String? selectedValue;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Stack(children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(30.0), // Rounded corners on all sides
                border: Border.all(color: Colors.lightBlue),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 44, 44, 44),
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  controller: _search,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            const Positioned(
                right: 38.0,
                top: 20.0,
                child: Icon(
                  Icons.search,
                  color: Colors.lightBlue,
                  size: 40,
                ))
          ]),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0))),
                  width: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: <String>['List 1', 'List 2', 'List 3', 'List 4']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Text('List'),
                    icon: const Icon(Icons.arrow_drop_down,
                        size: 44, color: Colors.lightBlue),
                    iconSize: 24,
                    elevation: 16,
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0))),
                  width: 125,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: <String>['List 1', 'List 2', 'List 3', 'List 4']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Text('Language'),
                    icon: const Icon(Icons.arrow_drop_down,
                        size: 44, color: Colors.lightBlue),
                    iconSize: 24,
                    elevation: 16,
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0))),
                  width: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: <String>[
                      'A-Z',
                      'Z-A',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Text('Sort'),
                    icon: const Icon(Icons.sort_outlined,
                        size: 24, color: Colors.lightBlue),
                    iconSize: 24,
                    elevation: 16,
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ])),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorsDetail(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.lightBlue)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'asset/images/user.jpg'), // Corrected asset path
                    ),
                    SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Hibakh Xassan",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Dentist",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 92, 91, 91)),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: Colors.lightBlue),
                            Text(
                              "working at Girum Hospital",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 91, 91)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
