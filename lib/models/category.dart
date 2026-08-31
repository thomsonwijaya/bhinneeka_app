import 'package:flutter/material.dart';

/// Model untuk kategori menu (Coffee, Non-Coffee, Makanan, Minuman).
class Category {
  final String label;
  final IconData icon;

  const Category({required this.label, required this.icon});
}
