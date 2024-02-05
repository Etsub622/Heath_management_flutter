import 'package:flutter/material.dart';
import 'package:patient/BottomNav.dart';
import 'package:patient/NotifyButton.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const BottomNav();
                      }),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 60,
                width: 130,
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Text(
                          'sort',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )),
                        Icon(
                          Icons.sort,
                          color: Colors.lightBlue,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const NotifyButton(
              mainText: 'Upcoming appointment',
              subText:
                  'You have appointment wifh Dr.Hibak Xassa and loooooooooooooooooooooooooo',
              icon: Icons.upcoming,
            ),
            const SizedBox(
              height: 10,
            ),
            const NotifyButton(
              mainText: 'Appointment success',
              subText: 'You have successfully changed your shedule',
              icon: Icons.upcoming,
              iconColor: Colors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            const NotifyButton(
              mainText: 'Appointment cancelled',
              subText: 'You have successfully cancelled your shedule',
              icon: Icons.announcement,
              iconColor: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            const NotifyButton(
                mainText: 'system update',
                subText: 'Update the latest version for better experience',
                icon: Icons.system_update),
            const SizedBox(
              height: 10,
            ),
            const NotifyButton(
                mainText: 'Some notify',
                subText: 'Anything that can be notified',
                icon: Icons.notification_important_sharp),
          ],
        ),
      ),
    );
  }
}
