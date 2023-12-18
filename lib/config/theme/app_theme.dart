import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF0AC8B9),
          onPrimary: Color(0xFF005A82),
          secondary: Color(0xFF0A323C),
          onSecondary: Colors.white,
          error: Color(0xFF785A28),
          onError: Color(0xFFC89B3C),
          background: Color(0xFF010A13),
          onBackground: Color(0xFF010A13),
          surface: Color(0xFF091428),
          onSurface: Colors.white,
        ),
      );
}
