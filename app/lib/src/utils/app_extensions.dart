import 'dart:convert';

import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  /// Returns the current theme of the application.
  ThemeData get theme => Theme.of(this);

  /// Returns the current media query data of the application.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the size of the screen.
  Size get screenSize => MediaQuery.sizeOf(this);
}

extension StringExtension on String {
  /// Decodes the string from UTF-8 and converts it to lowercase.
  ///
  /// Returns the decoded string in lowercase.
  String decode() {
    final result = utf8.decode(runes.toList()).toLowerCase();
    return result;
  }
}
