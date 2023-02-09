import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  smallText(BuildContext context) {
    TextStyle smallText = Theme.of(context).textTheme.bodySmall!;
    return smallText;
  }

  mediumText(BuildContext context) {
    TextStyle mediumText = Theme.of(context).textTheme.bodyMedium!;
    return mediumText;
  }

  largeText(BuildContext context) {
    TextStyle largeText = Theme.of(context).textTheme.bodyLarge!;
    return largeText;
  }

  headlineText4(BuildContext context) {
    TextStyle headlineText = Theme.of(context).textTheme.headline4!;
    return headlineText;
  }

  headlineText5(BuildContext context) {
    TextStyle headlineText = Theme.of(context).textTheme.headline5!;
    return headlineText;
  }

  headlineText6(BuildContext context) {
    TextStyle headlineText = Theme.of(context).textTheme.headline6!;
    return headlineText;
  }
}
