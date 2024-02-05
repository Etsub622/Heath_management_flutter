import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.lightBlue,
            child: Image(image: AssetImage("asset/images/logo.jpg")),
          ),
          Row(
            children: [
              Icon(
                Icons.notifications,
                size: 28,
                color: Colors.lightBlue,
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('asset/images/user.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
