import 'package:flutter/material.dart';
import 'package:patient/signup.dart';

class LangindPage extends StatelessWidget {
  const LangindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: Container(
                  color: Color.fromARGB(255, 169, 224, 249),
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset(
                        'asset/images/user.jpg',
                        width: double.infinity,
                      ),
                      const Text(
                        'Find doctors',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'What can be done...',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.lightBlue,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 200, 231, 246),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 200, 231, 246),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 200, 231, 246),
            ),
          ]),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 19),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignupPage();
                    }));
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
