import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle font18BlackRegular = TextStyle(
    fontSize: 18,
    fontFamily: 'Inter',
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font20BlackRegular = TextStyle(
    fontSize: 20,
    fontFamily: 'Inter',
    color: Colors.black.withOpacity(0.8),
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font22BlackMedium = TextStyle(
    fontSize: 22,
    fontFamily: 'Inter',
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle font25BlackMedium = TextStyle(
    fontSize: 25,
    fontFamily: 'Inter',
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18,
    fontFamily: 'Inter',
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font24BlackSemiBold = TextStyle(
    fontSize: 24,
    fontFamily: 'Inter',
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
}
