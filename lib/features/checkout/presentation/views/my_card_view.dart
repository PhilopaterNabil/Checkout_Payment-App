import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
