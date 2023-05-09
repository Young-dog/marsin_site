import 'package:flutter/material.dart';

final backColorSite = LinearGradient(
  colors: [
    firstColor,
    secondColor,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

SizedBox sizedBox = const SizedBox(
  height: 35,
);

SizedBox sizedBoxForMobile = const SizedBox(
  height: 25,
);

Color firstColor = const Color(0xFF4E093A).withOpacity(0.9);
Color secondColor = const Color(0xFF060606).withOpacity(0.9);
