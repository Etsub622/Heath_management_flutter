import 'package:flutter/material.dart';
class ToggleButtonRow extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final bool isOn;
  final VoidCallback onPressed;

  const ToggleButtonRow({
    required this.label,
    required this.icon,
    required this.color,
    required this.isOn,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 60),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
            ),
          ),
          IconButton(
            icon: Icon(
              icon,
              color: isOn ? color : Colors.grey[400],
            ),
            onPressed: onPressed,
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}