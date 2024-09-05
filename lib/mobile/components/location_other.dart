import 'package:flutter/material.dart';

class LocationOther extends StatelessWidget {
  final IconData icon;
  final String text;
  const LocationOther({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white60),
        )
      ],
    );
  }
}