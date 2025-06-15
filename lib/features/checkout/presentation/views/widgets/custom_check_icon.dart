import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFEDEDED),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xFF34A853),
        child: Icon(
          Icons.check,
          size: 70,
          color: Colors.white,
        ),
      ),
    );
  }
}
