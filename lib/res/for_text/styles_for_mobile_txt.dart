part of 'styles_for_desctop_txt.dart';

final styleForTextInStartWidgetBoldItalicMobile = GoogleFonts.ibmPlexSerif(
  textStyle: const TextStyle(
    shadows: <Shadow>[
      Shadow(
        offset: Offset(2, 2),
        blurRadius: 1,
      ),
    ],
    color: Colors.white,
    fontSize: 35,
    letterSpacing: 0.07,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w700,
  ),
);

dynamic styleItalicMobile = GoogleFonts.ibmPlexSerif(
  textStyle: const TextStyle(
    shadows: <Shadow>[
      Shadow(
        offset: Offset(2, 2),
        blurRadius: 1,
      ),
    ],
    color: Colors.white,
    fontSize: 15,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.07,
    fontWeight: FontWeight.w300,
  ),
);

final styleRegularMobile = GoogleFonts.ibmPlexSerif(
  textStyle: const TextStyle(
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2, 2),
          blurRadius: 1,
        ),
      ],
      color: Colors.white,
      fontSize: 25,
      letterSpacing: 0.07,
      fontWeight: FontWeight.w400),
);