import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  textTheme: const TextTheme(
    labelMedium: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 20,
        letterSpacing: 0.07,
        fontFamily: "IBMPlexSerif",
        fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 27,
        letterSpacing: 0.07,
        fontFamily: "IBMPlexSerif",
        fontWeight: FontWeight.w400),
    headlineLarge: TextStyle(
        decoration: TextDecoration.underline,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 27,
        letterSpacing: 0.07,
        fontFamily: "IBMPlexSerif",
        fontWeight: FontWeight.w400),
    displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 70,
        letterSpacing: 0.7,
        fontFamily: "IBMPlexSerif",
        fontWeight: FontWeight.w700),
    displayMedium: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 25,
        letterSpacing: 0.07,
        fontFamily: "IBMPlexSerif",
        fontWeight: FontWeight.w700),
    displaySmall: TextStyle(
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2, 2),
          blurRadius: 1,
        ),
      ],
      color: Colors.white,
      fontSize: 35,
      letterSpacing: 0.07,
      fontFamily: "IBMPlexSerif",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontFamily: 'IBMPlexSerif',
        fontSize: 32,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w400),
    bodySmall: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 25,
        letterSpacing: 0.07,
        fontFamily: 'IBMPlexSerif',
        fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: 40,
        fontFamily: 'IBMPlexSerif',
        letterSpacing: 0.07,
        fontWeight: FontWeight.w700),
  ),
);