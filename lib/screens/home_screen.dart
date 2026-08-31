import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../data/coffee_data.dart';
import '../models/category.dart';
import '../widgets/special_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              _buildHeader(),
              const SizedBox(height: 20),
              _buildGreeting(),
              const SizedBox(height: 18),
              _buildPromoBanner(),
              const SizedBox(height: 16),
              _buildPointsCard(),
              const SizedBox(height: 24),
              _buildSectionHeader('Menu Favorit'),
              const SizedBox(height: 16),
              _buildCategories(),
              const SizedBox(height: 24),
              _buildSectionHeader('Rekomendasi Untukmu'),
              const SizedBox(height: 16),
              _buildRecommendations(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // --- Header: logo + notification bell ---
  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.cream,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.coffee, color: AppColors.primary),
        ),
        const SizedBox(width: 10),
        const Text(
          'BHINNEEKA',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.card,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(Icons.notifications_none,
                  color: AppColors.textPrimary),
            ),
            Positioned(
              right: 9,
              top: 9,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // --- Greeting text ---
  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Selamat datang di Bhinneeka',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary)),
        SizedBox(height: 4),
        Text('Mulai hari Anda dengan secangkir kopi',
            style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
      ],
    );
  }

  // --- Promo banner ---
  Widget _buildPromoBanner() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cream,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text('PROMO SPESIAL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5)),
                    ),
                    const SizedBox(height: 10),
                    const Text('Diskon 9%',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary)),
                    const Text('Semua Coffee',
                        style: TextStyle(
                            fontSize: 15, color: AppColors.textSecondary)),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      child: const Text('Lihat Menu'),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=300&q=80',
                width: 130,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) => Container(
                  width: 130,
                  color: AppColors.primary.withOpacity(0.15),
                  child: const Icon(Icons.local_cafe,
                      size: 48, color: AppColors.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Loyalty points card ---
  Widget _buildPointsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.cream, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.cream,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(Icons.stars_rounded, color: AppColors.primary),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('1.250 Poin',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary)),
                SizedBox(height: 2),
                Text('Kumpulkan poin setiap pembelian',
                    style: TextStyle(
                        fontSize: 12, color: AppColors.textSecondary)),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.chevron_right, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // --- Section header with "Lihat Semua" ---
  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary)),
        const Text('Lihat Semua',
            style: TextStyle(
                fontSize: 13,
                color: AppColors.primary,
                fontWeight: FontWeight.w600)),
      ],
    );
  }

  // --- Category row ---
  Widget _buildCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: menuCategories.map(_categoryItem).toList(),
    );
  }

  Widget _categoryItem(Category category) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            color: AppColors.cream,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(category.icon, color: AppColors.primary, size: 26),
        ),
        const SizedBox(height: 8),
        Text(category.label,
            style: const TextStyle(
                fontSize: 12,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  // --- Horizontal recommendation list ---
  Widget _buildRecommendations() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recommendations.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, i) => SpecialCard(coffee: recommendations[i]),
      ),
    );
  }

  // --- Bottom navigation ---
  Widget _buildBottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navItem(Icons.home_rounded, 'Beranda', 0),
            _navItem(Icons.restaurant_menu, 'Menu', 1),
            _navItem(Icons.receipt_long, 'Pesanan', 2),
            _navItem(Icons.card_giftcard, 'Poin', 3),
            _navItem(Icons.person_outline, 'Profil', 4),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final selected = _navIndex == index;
    final color = selected ? AppColors.primary : AppColors.textSecondary;
    return GestureDetector(
      onTap: () => setState(() => _navIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 4),
          Text(label,
              style: TextStyle(
                  fontSize: 11,
                  color: color,
                  fontWeight:
                      selected ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
