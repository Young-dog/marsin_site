import 'package:flutter/material.dart';

Gradient gradientForButton = LinearGradient(
  colors: [
    colorForButton1,
    colorForButton2,
  ],
  end: Alignment.topCenter,
  begin: Alignment.bottomCenter,
);

Color colorForButton1 = Color(0xFFDA0D00).withOpacity(0.9);
Color colorForButton2 = Color(0xFFFF6A60);