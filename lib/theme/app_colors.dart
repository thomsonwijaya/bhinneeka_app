import 'package:flutter/material.dart';

/// Central color palette for the Bhinneeka coffee app.
/// Tema: krem hangat dengan aksen emas + aksen hijau & pink.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFE0A32E); // gold / amber
  static const Color primaryDark = Color(0xFF6B3F1D); // dark brown
  static const Color background = Color(0xFFFDF8F0); // warm near-white
  static const Color card = Colors.white;
  static const Color cream = Color(0xFFF7EFE0); // soft cream accent
  static const Color textPrimary = Color(0xFF4A3A2A);
  static const Color textSecondary = Color(0xFF8A8175);
  static const Color price = Color(0xFFC98A22);

  // Aksen untuk opsi pemesanan
  static const Color pickup = Color(0xFF2F8F5B); // green
  static const Color delivery = Color(0xFFE43D7A); // pink

  // Gradient banner promo
  static const Color bannerStart = Color(0xFFF7DB90);
  static const Color bannerEnd = Color(0xFFE7A93C);
}
