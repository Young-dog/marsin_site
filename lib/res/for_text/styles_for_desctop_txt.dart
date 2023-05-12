import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'styles_for_mobile_txt.dart';

dynamic styleForTextInStartWidgetBoldItalic(BuildContext context) {
  double hh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
      shadows: const <Shadow>[
        Shadow(
          offset: Offset(2, 2),
          blurRadius: 1,
        ),
      ],
      color: Colors.white,
      fontSize: hh * 0.05,
      letterSpacing: 0.07,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    ),
  );
}

dynamic styleItalic(BuildContext context) {
  double wh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
      shadows: const <Shadow>[
        Shadow(
          offset: Offset(2, 2),
          blurRadius: 1,
        ),
      ],
      color: Colors.white,
      fontSize: wh * 0.02,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.07,
      fontWeight: FontWeight.w300,
    ),
  );
}

dynamic styleRegularForButton(BuildContext context) {
  double wh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
        shadows: const <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: wh * 0.02,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w400),
  );
}

dynamic styleBoldForDesctop(BuildContext context) {
  double wh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: wh * 0.04,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w700),
  );
}

dynamic styleForCategoriesNDesctop(BuildContext context) {
  double wh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
        shadows: const <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: wh * 0.025,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w400),
  );
}

dynamic styleForCategoriesYDesctop(BuildContext context) {
  double wh = MediaQuery
      .of(context)
      .size
      .width;

  return GoogleFonts.ibmPlexSerif(
    textStyle: TextStyle(
        decoration: TextDecoration.underline,
        shadows: const <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        fontSize: wh * 0.025,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w400),
  );
}
