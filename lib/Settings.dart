import 'package:flutter/material.dart';
import 'package:patient/BottomNav.dart';
import 'package:patient/Togglebutton.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isLightOn = false;
  bool isDarkOn = false;
  bool isGeneralNotificationOn = false;
  bool isAppointmentReminderOn = false;
  bool isGetUpdatesOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                  'Settings',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.mode,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Theme',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleButtonRow(
              label: 'Light',
              icon: Icons.light,
              color: Colors.lightBlue,
              isOn: isLightOn,
              onPressed: () {
                setState(() {
                  isLightOn = !isLightOn;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleButtonRow(
              label: 'Dark',
              icon: Icons.dark_mode,
              color: Colors.lightBlue,
              isOn: isDarkOn,
              onPressed: () {
                setState(() {
                  isDarkOn = !isDarkOn;
                });
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notification_important,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Notification preference',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleButtonRow(
              label: 'General notification',
              icon: Icons.notifications,
              color: Colors.lightBlue,
              isOn: isGeneralNotificationOn,
              onPressed: () {
                setState(() {
                  isGeneralNotificationOn = !isGeneralNotificationOn;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleButtonRow(
              label: 'Appointment reminder',
              icon: Icons.alarm,
              color: Colors.lightBlue,
              isOn: isAppointmentReminderOn,
              onPressed: () {
                setState(() {
                  isAppointmentReminderOn = !isAppointmentReminderOn;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleButtonRow(
              label: 'Get updates',
              icon: Icons.update,
              color: Colors.lightBlue,
              isOn: isGetUpdatesOn,
              onPressed: () {
                setState(() {
                  isGetUpdatesOn = !isGetUpdatesOn;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Other configuration',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
