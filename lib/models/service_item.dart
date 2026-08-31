import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Model untuk kartu layanan (Pick Up, Delivery, Reservasi, dll).
class ServiceItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const ServiceItem({
    required this.title,
    required this.description,
    required this.icon,
    this.color = AppColors.primary,
  });
}
