import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sieveoferatosthenes/resources/colors/colors.dart';

class AppabarTextStyles {
  static TextStyle overline(
      {required BuildContext context, required Color color}) {
    return GoogleFonts.modernAntiqua(
      textStyle: Theme.of(context)
          .textTheme
          .overline
          ?.copyWith(color: Theme.of(context).colorScheme.FontsColor),
      fontSize: 18,
    );
  }
}

class ButtonTextStyle {
  static TextStyle overline(
      {required BuildContext context, required Color color}) {
    return GoogleFonts.courgette(
        textStyle: Theme.of(context)
            .textTheme
            .overline
            ?.copyWith(color: Theme.of(context).colorScheme.FontsColor),
        fontSize: 15,
        fontWeight: FontWeight.bold);
  }
}

class PrimeNumbersTextStyleS {
  static TextStyle overline(
      {required BuildContext context, required Color color}) {
    return GoogleFonts.courgette(
        textStyle: Theme.of(context)
            .textTheme
            .overline
            ?.copyWith(color: Theme.of(context).colorScheme.primeNumbersColor),
        fontSize: 15,
        fontWeight: FontWeight.bold);
  }
}
