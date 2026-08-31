import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../models/category.dart';

/// Kategori pada bagian "Menu Favorit".
const List<Category> menuCategories = [
  Category(label: 'Coffee', icon: Icons.coffee),
  Category(label: 'Non-Coffee', icon: Icons.emoji_food_beverage),
  Category(label: 'Makanan', icon: Icons.restaurant),
  Category(label: 'Minuman', icon: Icons.local_drink),
];

/// Data untuk bagian "Rekomendasi Untukmu".
/// Ganti imageUrl dengan aset lokal Anda bila perlu.
const List<Coffee> recommendations = [
  Coffee(
    name: 'Cappuccino Latte',
    description: 'Best Seller',
    price: 25000,
    imageUrl:
        'https://images.unsplash.com/photo-1534778101976-62847782c213?w=400&q=80',
  ),
  Coffee(
    name: 'Iced Americano',
    description: 'Segar & Ringan',
    price: 22000,
    imageUrl:
        'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=400&q=80',
  ),
  Coffee(
    name: 'Matcha Latte',
    description: 'Menu Baru',
    price: 28000,
    imageUrl:
        'https://images.unsplash.com/photo-1515823662972-da6a2e4d3002?w=400&q=80',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    description: 'Manis & Creamy',
    price: 30000,
    imageUrl:
        'https://images.unsplash.com/photo-1485808191679-5f86510681a2?w=400&q=80',
  ),
];
