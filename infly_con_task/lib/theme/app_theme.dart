import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Color Palette — Deep Midnight x Electric Violet x Amber Glow
  static const Color background = Color(0xFF0A0A14);      // near-black with blue tint
  static const Color surface = Color(0xFF12121F);          // card background
  static const Color surfaceElevated = Color(0xFF1A1A2E);  // elevated card
  static const Color primary = Color(0xFF7C3AED);          // electric violet
  static const Color primaryLight = Color(0xFF9D5CF6);     // lighter violet
  static const Color primaryGlow = Color(0x337C3AED);      // glow effect
  static const Color accent = Color(0xFFF59E0B);           // amber glow
  static const Color accentGlow = Color(0x33F59E0B);
  static const Color positive = Color(0xFF10B981);         // emerald green
  static const Color negative = Color(0xFFEF4444);         // red
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textMuted = Color(0xFF475569);
  static const Color border = Color(0xFF1E1E35);
  static const Color divider = Color(0xFF1A1A2E);

  // Category colors
  static const List<Color> categoryColors = [
    Color(0xFF7C3AED), // violet - Food
    Color(0xFF0EA5E9), // sky blue - Travel
    Color(0xFFF59E0B), // amber - Shopping
    Color(0xFF10B981), // emerald - Health
    Color(0xFFEF4444), // red - Entertainment
    Color(0xFFEC4899), // pink - Personal
    Color(0xFF8B5CF6), // purple - Subscriptions
    Color(0xFF14B8A6), // teal - Utilities
  ];

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        background: background,
        surface: surface,
        primary: primary,
        secondary: accent,
      ),
      textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
  }
}
